-- luajit terms_merge.lua terms.csv 1.terms 2.terms 3.terms ...
-- "term","trans1[xx]|trans2[yy]|...","comment1[xx]|comment2[yy]|..."
-- terms={ key:term(lower) value:{term=term, trans={tran1=xx,tran2=yy,...}, comments={comment1=xx,comment2=yy,...}} }
-- [nn]
-- "专有名词原文","简体中文翻译","解释说明"

local terms = {}
local function addTerms(term, tran, comment)
	term = term:gsub("^%s+", ""):gsub("%s+$", ""):gsub('""','"')
	tran = tran:gsub("^%s+", ""):gsub("%s+$", ""):gsub('""','"')
	comment = comment:gsub("^%s+", ""):gsub("%s+$", ""):gsub('""','"')
	local termLower = term:lower()
	local t = terms[termLower]
	if not t then
		t = { term = term, trans={}, comments={} }
		terms[termLower] = t
	end
	if #term:gsub("%l", "") > #t.term:gsub("%l", "") then
		t.term = term
	end
	t.trans[tran] = (t.trans[tran] or 0) + 1
	t.comments[comment] = (t.comments[comment] or 0) + 1
end

local f = io.open(arg[1], "wb")
if not f then error("ERROR: can not create: " .. arg[1]) end
for i = 2, #arg do
	local lineId = 0
	for line in io.lines(arg[i]) do
		lineId = lineId + 1
		local term, tran, comment = line:match '^[%[%]%d]*"(.-)","(.-)","(.-)"$'
		if term then
			if term ~= "专有名词原文" then
				addTerms(term, tran, comment)
			end
		elseif not line:find '^%[%d+%]$' then
			error("ERROR: unknown format at line " .. lineId .. " in " .. arg[i])
		end
	end
end

local function combine(t, alwaysNum)
	local keys = {}
	for k in pairs(t) do
		keys[#keys + 1] = k
	end
	table.sort(keys, function(k1, k2) return t[k1] > t[k2] end)
	local s = {}
	for i, k in ipairs(keys) do
		if i > 1 then
			s[#s + 1] = "|"
		end
		s[#s + 1] = k
		if t[k] > 1 and (alwaysNum or #keys > 1) then
			s[#s + 1] = "["
			s[#s + 1] = t[k]
			s[#s + 1] = "]"
		end
	end
	return table.concat(s)
end

local function writeCsvStr(s1, s2, s3)
	if s1:find '[,"]' or s2:find '[,"]' or s3:find '[,"]' then
		f:write('"', s1:gsub('"', '""'), '","', s2:gsub('"', '""'), '","', s3:gsub('"', '""'), '"\n')
	else
		f:write(s1, ',', s2, ',', s3, '\n')
	end
end

local termsKeys = {}
for k in pairs(terms) do
	termsKeys[#termsKeys + 1] = k
end
table.sort(termsKeys)
for _, k in ipairs(termsKeys) do
	local t = terms[k]
	writeCsvStr(t.term, combine(t.trans), combine(t.comments))
end
f:close()
print "DONE!"

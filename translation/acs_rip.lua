-- for %a in (*.s) do @luajit acs_rip.lua %a %~na.m

local msgs = {}
local lastMsg
local lastEnd
for line in io.lines(arg[1]) do
	line = line:gsub("//.*", "")
	local msg = line:match "[hH]ud[mM]essage%s*%(%s*s:%s*\"(.-)\""
	if not msg then msg = line:match "[pP]rint%s*%(%s*s:%s*\"(.-)\"" end
	if msg then
		msg = msg:gsub("\\c%[.-%]", ""):gsub("\\c%-", "") -- \c[Gold]waterfall gate\c-
		msg = msg:gsub("^%s+", ""):gsub("%s+$", "")
		if #msg > 1 and msg:find "%a%a" and msg ~= lastMsg then
			lastEnd = false
			lastMsg = msg
			msgs[#msgs + 1] = msg
		end
	elseif not lastEnd and line:find "}" and #msgs > 0 then
		lastEnd = true
		msgs[#msgs] = msgs[#msgs] .. " "
	end
end

local f = io.open(arg[2], "wb")
for _, msg in ipairs(msgs) do
	f:write(msg, "\n")
end
f:close()

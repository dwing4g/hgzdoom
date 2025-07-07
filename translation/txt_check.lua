local fnss = {
	{ "0.txt", "0.me" },
	{ "MAP.txt" },
	{ "MAP01.txt", "MAP01.m" },
	{ "MAP01_demo.txt", "MAP01_demo.m" },
	{ "MAP02.txt", "MAP02.m" },
	{ "MAP03.txt", "MAP03.m" },
	{ "MAP04.txt", "MAP04.m" },
	{ "MAP05.txt", "MAP05.m" },
	{ "MAP06.txt", "MAP06.m" },
	{ "MAP07.txt", "MAP07.m" },
	{ "MAP08.txt", "MAP08.m" },
	{ "MAP09.txt", "MAP09.m" },
	{ "MAP10.txt", "MAP10.m" },
	{ "MAP11.txt", "MAP11.m" },
	{ "MAP12.txt", "MAP12.m" },
	{ "MAP13.txt", "MAP13.m" },
	{ "MAP14.txt", "MAP14.m" },
	{ "MAP15.txt", "MAP15.m" },
	{ "MAP16.txt", "MAP16.m" },
	{ "MAP17.txt", "MAP17.m" },
	{ "MAP18.txt", "MAP18.m" },
	{ "MAP19.txt", "MAP19.m" },
	{ "MAP20.txt", "MAP20.m" },
	{ "MAP21.txt", "MAP21.m" },
	{ "MAP22.txt", "MAP22.m" },
	{ "MAP31.txt", "MAP31.m" },
	{ "TITLEMAP.txt", "TITLEMAP.me" },
}

local function toKey(e)
	return e:gsub("%s+", ""):lower()
end

local t = {}
for _, fns in ipairs(fnss) do
	local es = {}
	if fns[2] then
		for line in io.lines(fns[2]) do
			line = line:gsub("^%s+", ""):gsub("%s+$", "")
			if line ~= "" then
				es[line] = true
			end
		end
	end
	local fn = fns[1]
	local e = nil
	local i = 0
	for line in io.lines(fn) do
		i = i + 1
		if line ~= "" then
			if line:find "^%s" or line:find "%s$" then
				print("WARN: found leading or ending space at " .. fn .. "(" .. i .. ")")
			end
			if not e then
				e = line
				if not es[e] and fns[2] then
					print("ERROR: not found original line at " .. fn .. "(" .. i .. "): " .. e)
				end
			else
				local k = toKey(e)
				if not t[k] then
					t[k] = { line, fn, i, e }
				elseif t[k][1] ~= line and (t[k][4] ~= t[k][1] or line ~= e) then
					print("ERROR: unmatch translation at " .. fn .. "(" .. i .. ") and " .. t[k][2] .. "(" .. t[k][3] .. ")")
				end
				e = nil
			end
		end
	end
	if e then
		print("ERROR: bad end @ " .. fn)
	end
end
print "DONE!"

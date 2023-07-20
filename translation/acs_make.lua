-- luajit acs_make.lua

local files = {
	"MAP01.m",
	"MAP02.m",
	"MAP03.m",
	"MAP04.m",
	"MAP05.m",
	"MAP06.m",
--	"MAP07.m",
--	"MAP08.m",
--	"MAP09.m",
--	"MAP10.m",
--	"MAP11.m",
--	"MAP12.m",
--	"MAP13.m",
--	"MAP14.m",
--	"MAP15.m",
--	"MAP16.m",
--	"MAP17.m",
--	"MAP18.m",
--	"MAP19.m",
--	"MAP20.m",
--	"MAP21.m",
--	"MAP22.m",
--	"MAP31.m",
--	"TITLEMAP.m",
}

local function isHalfChar(c)
	return c and c >= 0x80 and c < 0xc0
end

local function make(file_msg, file_msgc, file_out)
	local msges, msgcs = {}, {}
	for line in io.lines(file_msg) do
		line = line:gsub("^%s+", ""):gsub("%s+$", "")
		msges[#msges + 1] = line
	end
	for line in io.lines(file_msgc) do
		line = line:gsub("^%s+", ""):gsub("%s+$", "")
		msgcs[#msgcs + 1] = line
	end
	if #msges ~= #msgcs then
		error("lines mismatch: " .. file_msg)
	end
	local i = 1
	while i <= #msgcs do
		local n = 1
		while msgcs[i + n] and #msgcs[i + n] == 0 do
			n = n + 1
		end
		if n == 1 then
			file_out:write(msges[i], "\n")
			file_out:write(msgcs[i], "\n\n")
		else
			local msgc = msgcs[i]
			local k = math.floor(#msgc / n)
			local p, q = 1, 1
			for j = 0, n - 1 do
				q = q + k
				while isHalfChar(msgc:byte(q + 1)) do
					q = q + 1
				end
				if j == n - 1 then
					q = #msgc
				end
				file_out:write(msges[i + j], "\n")
				file_out:write(msgc:sub(p, q), "\n\n")
				p = q + 1
			end
		end
		i = i + n
	end
end

for _, file in ipairs(files) do
	local filet = file:gsub("%..*", ".txt");
	local file_out = io.open(filet, "wb")
	print(file .. " + " .. file .. "c => " .. filet)
	make(file, file .. "c", file_out)
	file_out:close()
end

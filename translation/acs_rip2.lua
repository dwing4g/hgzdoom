-- for %a in (*.m) do @luajit acs_rip2.lua %a %~na.me
-- copy *.me *.mc

local msgs = {}
local lastIdx
local lastMsg = ""
for msg in io.lines(arg[1]) do
	if lastMsg:find "[%a%-,]$" and msg:find "^%l" then
		if lastMsg:find "%-$" then
			lastMsg = lastMsg .. msg
		else
			lastMsg = lastMsg .. " " .. msg
		end
		msgs[lastIdx] = lastMsg
		msgs[#msgs + 1] = ""
	else
		lastIdx = #msgs + 1
		lastMsg = msg
		msgs[lastIdx] = msg
	end
end

local f = io.open(arg[2], "wb")
for _, msg in ipairs(msgs) do
	f:write(msg, "\n")
end
f:close()

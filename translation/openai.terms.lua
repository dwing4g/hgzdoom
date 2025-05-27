-- luajit openai.lua openai.terms.lua 输入.txt 输出.txt
url = 'http://127.0.0.1:8080/v1/chat/completions'
openai_api_key = nil
model = nil
temperature = 0.1 -- for thinking
top_k = 20
top_p = 0.95
min_p = 0
repeat_last_n = 64 -- for thinking
repeat_penalty = 1.1 -- for thinking
max_tokens = -1
seed = 0
line_mode = false -- for batch mode
debug = nil
jsonHighSize = 8 * 1024 -- for 4k context + thinking
jsonLowSize = jsonHighSize * 0.75
lineLimitSize = jsonHighSize * 0.2 -- for batch mode
prompt = [[
你是精通英文和中文的好助手，下面将从我每次提供的英文中提取**所有的专有名词**。每个专有名词由一个或少量单词组成，尤其注意大写开头的单词，也提取可能有不寻常译法的名词。
原文出自一款西方奇幻风格游戏中的对话和提示信息，相邻两行原文可能上下文相关，以帮助理解每句话的含义。
注意检查提取是否有遗漏，完全找不到时说“没有”，否则以CSV格式输出如下:
"专有名词原文","简体中文翻译","解释说明"
"Tom","汤姆","人名"
]]

--[[
filter_line_in = function(line, i)
	return line
end
filter_line_out = function(res, i)
	res = res:gsub('^<think>.-</think>', ''):gsub('^<think>', ''):gsub('\r+', ''):gsub('^\n+', ''):gsub('\n+$', '')
	return res, '[' .. i .. ']' .. (res:find '\n' and '\n' or '') .. res .. '\n'
end
--]]

-- luajit openai.lua openai.trans.lua 输入.txt 输出.txt
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
你是精通英文到简体中文翻译的好助手，下面将要翻译我每次提供的英文原文。我每次还会先提示一些专有名词的参考翻译，尽量以此为准。
原文出自一款西方奇幻风格游戏中的对话和提示信息，相邻两行原文可能上下文相关，以帮助理解每句话的含义。
你会理解原文每个词的含义，译文要遵循原文的风格和语气，调整用词、语序和标点以符合通顺自然的中文习惯，还要保证专有名词和术语的一致性。
如果遇到部分原文用<>括起来，则对此部分原样复制。
完整译文前后用```括起来。
]]

-- 专有名词的参考翻译:
-- xxx=>yyy
-- 英文原文:
-- ......

--[[
filter_line_in = function(line, i)
	return line
end
filter_line_out = function(res, i)
	res = res:gsub('^<think>.-</think>', ''):gsub('^<think>', ''):gsub('\r+', ''):gsub('^\n+', ''):gsub('\n+$', '')
	return res, '[' .. i .. ']' .. (res:find '\n' and '\n' or '') .. res .. '\n'
end
--]]

-- 1. 对每个原文txt文件用AI提取每行的专有名词表并翻译,生成对应该文件的专有名词文件.
-- 2. 取出所有专有名词文件中的专有名词表,合并相同词,排序,生成完整词库文件.
-- 3. 人工校对并修改完整词库文件.
-- 4. 参考修正的完整词库文件,对每个原文txt文件用AI翻译每行文字,生成翻译后的译文txt文件.

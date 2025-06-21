-- luajit openai.lua openai.merge.lua 输入.txt 输出.txt
url = 'http://127.0.0.1:8080/v1/chat/completions'
openai_api_key = nil
model = nil
temperature = 0 -- for thinking
top_k = 20
top_p = 0.95
min_p = 0
repeat_last_n = 64 -- for thinking
repeat_penalty = 1.1 -- for thinking
max_tokens = -1
seed = 0
debug = nil
jsonHighSize = 8 * 1024 -- for 4k context + thinking
jsonLowSize = jsonHighSize * 0.75
lineLimitSize = 0
prompt = [[
你是精通英文到中文翻译的好助手，下面我每次提供一行英文原文和对应的两种参考翻译，你分析后总结出这行最好的翻译写出来，并用```前后括起来，注意参考翻译中的专有名词译法不要改动。
原文出自一款西方奇幻风格游戏中的对话和提示信息，相邻两行原文可能上下文相关，以帮助理解每句话的含义。
你会理解原文每个词的含义，译文要遵循原文的风格和语气，调整用词、语序和标点以符合通顺自然的中文习惯，还要保证专有名词和术语的一致性。
]]

local es = {}
local ei = 0
local lines = {}
filter_line_in = function(line, i)
	lines[#lines + 1] = line
	if i % 3 == 0 then
		es[#es + 1] = lines[1]
		local all = table.concat(lines, "\n")
		lines = {}
		return all
	end
end
filter_line_out = function(res, i)
	res = res:gsub('^<think>.-</think>', ''):gsub('^<think>', '')
	local fres = res:match('```(.-)```'):gsub('^%s+', ''):gsub('%s+$', '')
	ei = ei + 1
	return res, es[ei] .. "\n" .. fres .. "\n\n"
end

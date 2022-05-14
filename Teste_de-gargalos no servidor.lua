--test gargalo do codigo
local jose_test = minetest.get_us_time()
minetest.chat_send_all(string.format("elapsed time: %g ms", (minetest.get_us_time() - jose_test) / 1000))

--avaliação comparativa
		local TIME = 3
		local clock = minetest.get_us_time local us = TIME * 1000000 
		local function benchmark_function(fct, ...)
		local start = clock()
		local fin = start local total = 0 while
		fin - start < us do fct(...)
		total = total + 1 fin = clock() end return total * 1000000 / (fin - start) end
		--print("hello got printed " .. benchmark_function(print, "hello") .. " times a second")
		minetest.chat_send_all("hello got printed " .. benchmark_function(print, "hello") .. " times a second")

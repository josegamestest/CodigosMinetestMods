--test gargalo do codigo
local jose_test = minetest.get_us_time()
minetest.chat_send_all(string.format("elapsed time: %g ms", (minetest.get_us_time() - jose_test) / 1000))

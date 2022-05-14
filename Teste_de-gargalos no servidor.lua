--test gargalo do codigo
local testa = minetest.get_us_time()
minetest.chat_send_all(string.format("elapsed time: %g ms", (minetest.get_us_time() - testa) / 1000))

local image_base="base_image.png"
local tile_1="tiles.png"

--tile_1
minetest.register_node("tile_test:node_1",
{
	description="node_1",
	tiles={"[combine:16x16:1,1="..image_base..":0,0="..tile_1},
	paramtype ="light",
	groups = {cracky= 3,},
 })


--tile_2
minetest.register_node("tile_test:node_2",
{
	description="node_2",
	tiles={"[combine:16x16:1,1="..image_base..":-16/7,0="..tile_1},
	paramtype ="light",
	groups = {cracky= 3,},
 })

--tile_3
minetest.register_node("tile_test:node_3",
{
	description="node_3",
	tiles={"[combine:16x16:1,1="..image_base..":-32/7,0="..tile_1},
	paramtype ="light",
	groups = {cracky= 3,},
 })
--tile_4
--tile_5
--tile_6
--tile_7
--tile_8
--tile_9
minetest.register_node("tile_test:node_9",
{
	description="node_9",
	tiles={"[combine:16x16:1,1="..image_base..":0,-16/7="..tile_1},
	paramtype ="light",
	groups = {cracky= 3,},
 })

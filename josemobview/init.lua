 
-- esse codigo pega a voleha do mod mobs_animal e faz dele um itemde enfeite para loja

minetest.register_node("josemobview:itemnome", {

description="itemdescricao",	light_source = 12,
paramtype2 = "facedir",

drawtype = "mesh",
mesh = "mobs_sheep.b3d",
tiles = {"mobs_sheep_shaved.png^mobs_sheep_wool.png"},

visual_scale = 0.1,
protetor = "singleplayer",
pathfinding= false,

groups = {	snappy=1,		choppy=2,	flammable=3,	oddly_breakable_by_hand=2,},

selection_box = {
		type = 'fixed',
		fixed = {-1, -0, -1, 1, 2, 1},
		},
	collision_box = {
		type = 'fixed',
		fixed = {-1, -0, -1, 1, 2, 1},
		},
on_rightclick = function(self, clicker,rot)
     minetest.chat_send_all("Voce clocou")
end,
})

--Aqui nao registra nehum item nos 9 quadros de receita 
minetest.register_craft({
	output = "nomedomod:nomedoitem",
	recipe = {
		{"","",""},
		{"","",""},
		{"","",""},
	}
})

--Se caso fo registra um item nos 9 quadros de receita e no output sai o resultado "nomedomod:nomedoitem"
minetest.register_craft({
	output = "nomedomod:nomedoitem",
	recipe = {
		{"mod:item",mod:item,mod:item},
		{"mod:item",mod:item,mod:item},
		{"mod:item",mod:item,mod:item},
	}
})

--Aqui nao registra apenas um item pra receita no quadro do meio de receita  e os outro 8 quadros ficam vazios, no output sai o resultado "nomedomod:nomedoitem"
minetest.register_craft({
	output = "nomedomod:nomedoitem",
	recipe = {
		{"","",""},
		{"","default:dirt",""},
		{"","",""},
	}
})

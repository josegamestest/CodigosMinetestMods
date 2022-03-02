-- coloca uma terra sobre o jogador assim que o no e colocado no mundo
-- na linha comentada coloca uma entidade
on_construct = function(pos,placer,itemstack)
        minetest.chat_send_all(pos.y)
        pos.y = pos.y + 1
        --minetest.add_entity(pos, "nome_do_mod:entidade")
          minetest.set_node(pos, {name="default:dirt"})    
end,

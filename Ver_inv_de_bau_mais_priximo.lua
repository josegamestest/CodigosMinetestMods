minetest.register_chatcommand("chest", {
    params = "",
    description = "Exibe a posição e os itens em um bau trancado próximo",
    func = function(name, param)
        local player = minetest.get_player_by_name(name)
        if player then
            local player_pos = player:get_pos()
            -- Encontrar a posição do bloco de ossos nas proximidades do jogador
            --local chest_pos = minetest.find_node_near(player_pos, 200, {"chests:chests"})
            local chest_pos = minetest.find_node_near(player_pos,1, {"default:chest_locked"})
            
            if chest_pos then
                local chest_meta = minetest.get_meta(chest_pos)
                local chest_inv = chest_meta:get_inventory()

                local formspec = "size[18,10]" ..
                    "box[-0.3,-0.3;18.4,10.7;#000000]"..
                    "label[1,1;Posição Bau: " .. minetest.pos_to_string(chest_pos) .. "]" ..
                    "label[8,1;Itens no Bau:]"

                local x_offset = 1
                local y_offset = 2

                -- Adiciona os itens do bloco de ossos ao formulário com ícones
                for i = 1, chest_inv:get_size("main") do
                    local stack = chest_inv:get_stack("main", i)
                    local item_count = stack:get_count()
                    formspec = formspec ..
                        "item_image[" .. x_offset .. "," .. y_offset .. ";1,1;" .. stack:get_name() .. "]" ..
                        "label[" .. (x_offset + 1.5) .. "," .. (y_offset + 0.5) .. ";" .. item_count .. "]"
                    x_offset = x_offset + 2
                    -- Avança para a próxima linha após exibir 4 itens em uma linha
                    if i % 8 == 0 then
                        x_offset = 1
                        y_offset = y_offset + 1
                    end
                end
                minetest.show_formspec(name, "chestlocation:main", formspec)
            else
                minetest.chat_send_player(name, "Nenhum Bau trancado encontrado nas proximidades.")
            end
        else
            minetest.chat_send_player(name, "Jogador não encontrado.")
        end
    end,
})

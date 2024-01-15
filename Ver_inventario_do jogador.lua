--Exemplo /playerinfo singleplayer

minetest.register_chatcommand("playerinfo", {
    params = "<playername>",
    description = "Exibe informações sobre um jogador",
    func = function(name, param)
        local player = minetest.get_player_by_name(param)
        if player then
            local player_pos = player:get_pos()
            
            local player_hp = player:get_hp()
            local player_inv = player:get_inventory()

            local formspec = "size[18,10]" ..
                "box[-0.3,-0.3;18.4,10.7;#000000]"..
                "label[1,0;Informações do Jogador: " .. param .. "]" ..
                "label[1,1;Posição: " .. math.floor(player_pos.x) .. ", " .. math.floor(player_pos.y) .. ", " .. math.floor(player_pos.z) .. "]" ..
                "image[6.5,0.7;1,1;heart_icon.png]" ..
                "label[5,1;Vida: " .. player_hp .. "]" ..
                "label[8,1;Inventário:]"

            local x_offset = 1
            local y_offset = 2

            -- Adiciona os itens do inventário ao formulário com ícones
            for i = 1, player_inv:get_size("main") do
                local stack = player_inv:get_stack("main", i)
                local item_count = stack:get_count()

                formspec = formspec ..
                    "item_image[" .. x_offset .. "," .. y_offset .. ";1,1;" .. stack:get_name() .. "]" ..
                    "label[" .. (x_offset + 1) .. "," .. (y_offset + 0.5) .. ";" .. item_count .. "]"

                x_offset = x_offset + 2

                -- Avança para a próxima linha após exibir 4 itens em uma linha
                if i % 8 == 0 then
                    x_offset = 1
                    y_offset = y_offset + 1
                end
            end

            minetest.show_formspec(name, "playerinfo:main", formspec)
        else
            minetest.chat_send_player(name, "Jogador não encontrado.")
        end
    end,
})

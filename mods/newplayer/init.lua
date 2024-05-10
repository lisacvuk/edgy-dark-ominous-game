minetest.register_on_joinplayer(function(ObjectRef, last_login)
    if last_login == nil then
        local inv = ObjectRef:get_inventory()
        inv:add_item("main", "tools:pick_steel")
        inv:add_item("main", "tools:axe_steel")
        inv:add_item("main", "tools:shovel_steel")
        inv:add_item("main", "tools:sword_steel")
        inv:add_item("main", "protection:marker 4")
        inv:add_item("main", "protection:protector")
        inv:add_item("main", "blocks:torch 100")
        inv:add_item("main", "blocks:rope 100")
        inv:add_item("main", "blocks:imagination")
    end
end)
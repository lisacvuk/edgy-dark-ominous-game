-- default/trees.lua

-- support for MT game translation.
local S = default.get_translator

local random = math.random

--
-- Grow trees from saplings
--

-- 'can grow' function

function flora.can_grow(pos)
	local node_under = minetest.get_node_or_nil({x = pos.x, y = pos.y - 1, z = pos.z})
	if not node_under then
		return false
	end
	if minetest.get_item_group(node_under.name, "soil") == 0 then
		return false
	end
	local light_level = minetest.get_node_light(pos)
	if not light_level or light_level < 13 then
		return false
	end
	return true
end


-- 'is snow nearby' function

local function is_snow_nearby(pos)
	return minetest.find_node_near(pos, 1, {"group:snowy"})
end


-- Grow sapling

function flora.grow_new_apple_tree(pos)
	local path = minetest.get_modpath("flora") ..
		"/schematics/apple_tree_from_sapling.mts"
	minetest.place_schematic({x = pos.x - 3, y = pos.y - 1, z = pos.z - 3},
		path, "random", nil, false)
end

function flora.grow_new_big_apple_tree(pos)
	local path = minetest.get_modpath("flora") ..
		"/schematics/apple_tree_large.mts"
	minetest.place_schematic({x = pos.x - 6, y = pos.y - 2, z = pos.z - 6},
		path, "random", nil, false)
end

function flora.grow_new_jungle_tree(pos)
	local path = minetest.get_modpath("flora") ..
		"/schematics/jungle_tree_from_sapling.mts"
	minetest.place_schematic({x = pos.x - 2, y = pos.y - 1, z = pos.z - 2},
		path, "random", nil, false)
end

function flora.grow_new_emergent_jungle_tree(pos)
	local path = minetest.get_modpath("flora") ..
		"/schematics/emergent_jungle_tree_from_sapling.mts"
	minetest.place_schematic({x = pos.x - 3, y = pos.y - 5, z = pos.z - 3},
		path, "random", nil, false)
end

function flora.grow_new_pine_tree(pos)
	local path
	if math.random() > 0.5 then
		path = minetest.get_modpath("flora") ..
			"/schematics/pine_tree_from_sapling.mts"
	else
		path = minetest.get_modpath("flora") ..
			"/schematics/small_pine_tree_from_sapling.mts"
	end
	minetest.place_schematic({x = pos.x - 2, y = pos.y - 1, z = pos.z - 2},
		path, "0", nil, false)
end

function flora.grow_new_big_pine_tree(pos)
	local path = minetest.get_modpath("flora") ..
		"/schematics/pine_tree_large.mts"
	minetest.place_schematic({x = pos.x - 6, y = pos.y - 2, z = pos.z - 6},
		path, "random", nil, false)
end

function flora.grow_new_snowy_pine_tree(pos)
	local path
	if math.random() > 0.5 then
		path = minetest.get_modpath("flora") ..
			"/schematics/snowy_pine_tree_from_sapling.mts"
	else
		path = minetest.get_modpath("flora") ..
			"/schematics/snowy_small_pine_tree_from_sapling.mts"
	end
	minetest.place_schematic({x = pos.x - 2, y = pos.y - 1, z = pos.z - 2},
		path, "random", nil, false)
end

function flora.grow_new_acacia_tree(pos)
	local path = minetest.get_modpath("flora") ..
		"/schematics/acacia_tree_from_sapling.mts"
	minetest.place_schematic({x = pos.x - 4, y = pos.y - 1, z = pos.z - 4},
		path, "random", nil, false)
end

function flora.grow_new_big_acacia_tree(pos)
	local path = minetest.get_modpath("flora") ..
		"/schematics/acacia_tree_large.mts"
	minetest.place_schematic({x = pos.x - 7, y = pos.y - 2, z = pos.z - 7},
		path, "random", nil, false)
end

function flora.grow_new_aspen_tree(pos)
	local path = minetest.get_modpath("flora") ..
		"/schematics/aspen_tree_from_sapling.mts"
	minetest.place_schematic({x = pos.x - 2, y = pos.y - 1, z = pos.z - 2},
		path, "0", nil, false)
end

function flora.grow_new_big_aspen_tree(pos)
	local path = minetest.get_modpath("flora") ..
		"/schematics/aspen_tree_large.mts"
	minetest.place_schematic({x = pos.x - 4, y = pos.y - 2, z = pos.z - 4},
		path, "random", nil, false)
end

function flora.grow_new_cherry_tree(pos)
	local path = minetest.get_modpath("flora") ..
		"/schematics/cherry_tree.mts"
	minetest.place_schematic({x = pos.x - 4, y = pos.y - 1, z = pos.z - 4},
		path, "random", nil, false)
end

function flora.grow_new_big_cherry_tree(pos)
	local path = minetest.get_modpath("flora") ..
		"/schematics/cherry_tree_large.mts"
	minetest.place_schematic({x = pos.x - 8, y = pos.y - 1, z = pos.z - 8},
		path, "random", nil, false)
end

function flora.grow_new_bone_tree(pos)
	local path = minetest.get_modpath("flora") ..
		"/schematics/bone_tree.mts"
	minetest.place_schematic({x = pos.x - 3, y = pos.y - 1, z = pos.z - 3},
		path, "random", nil, false)
end

function flora.grow_new_big_bone_tree(pos)
	local path = minetest.get_modpath("flora") ..
		"/schematics/bone_tree_large.mts"
	minetest.place_schematic({x = pos.x - 5, y = pos.y - 1, z = pos.z - 5},
		path, "random", nil, false)
end

function flora.grow_bush(pos)
	local path = minetest.get_modpath("flora") ..
		"/schematics/bush.mts"
	minetest.place_schematic({x = pos.x - 1, y = pos.y - 1, z = pos.z - 1},
		path, "0", nil, false)
end

function flora.grow_blueberry_bush(pos)
	local path = minetest.get_modpath("flora") ..
		"/schematics/blueberry_bush.mts"
	minetest.place_schematic({x = pos.x - 1, y = pos.y, z = pos.z - 1},
		path, "0", nil, false)
end

function flora.grow_acacia_bush(pos)
	local path = minetest.get_modpath("flora") ..
		"/schematics/acacia_bush.mts"
	minetest.place_schematic({x = pos.x - 1, y = pos.y - 1, z = pos.z - 1},
		path, "0", nil, false)
end

function flora.grow_pine_bush(pos)
	local path = minetest.get_modpath("flora") ..
		"/schematics/pine_bush.mts"
	minetest.place_schematic({x = pos.x - 1, y = pos.y - 1, z = pos.z - 1},
		path, "0", nil, false)
end

function flora.grow_large_cactus(pos)
	local path = minetest.get_modpath("flora") ..
		"/schematics/large_cactus.mts"
	minetest.place_schematic({x = pos.x - 2, y = pos.y - 1, z = pos.z - 2},
		path, "random", nil, false)
end

flora.saplings = {
	sapling = {
		name = "apple tree sapling",
		description = "apple tree",
		grow_func = flora.grow_new_apple_tree
	},
	sapling_big = {
		name = "big apple tree sapling",
		description = "huge apple tree",
		grow_func = flora.grow_new_big_apple_tree
	},
	pine_sapling = {
		name = "pine tree sapling",
		description = "pine tree",
		grow_func = flora.select_pine_tree
	},
	pine_sapling_big = {
		name = "big pine tree sapling",
		description = "huge pine tree",
		grow_func = flora.grow_new_big_pine_tree
	},
	acacia_sapling = {
		name = "acacia tree sapling",
		description = "acacia tree",
		grow_func = flora.grow_new_acacia_tree
	},
	acacia_sapling_big = {
		name = "big acacia tree sapling",
		description = "huge acacia tree",
		grow_func = flora.grow_new_big_acacia_tree
	},
	aspen_sapling = {
		name = "aspen tree sapling",
		description = "aspen tree",
		grow_func = flora.grow_new_aspen_tree
	},
	aspen_sapling_big = {
		name = "big aspen tree sapling",
		description = "huge aspen tree",
		grow_func = flora.grow_new_big_aspen_tree
	},
	cherry_sapling = {
		name = "cherry tree sapling",
		description = "cherry tree",
		grow_func = flora.grow_new_cherry_tree
	},
	cherry_sapling_big = {
		name = "big cherry tree sapling",
		description = "huge cherry tree",
		grow_func = flora.grow_new_big_cherry_tree
	},
	bone_sapling = {
		name = "bone tree sapling",
		description = "bone tree",
		grow_func = flora.grow_new_bone_tree
	},
	bone_sapling_big = {
		name = "big bone tree sapling",
		description = "huge bone tree",
		grow_func = flora.grow_new_big_bone_tree
	},
	junglesapling = {
		name = "jungle tree sapling",
		description = "jungle tree",
		grow_func = flora.grow_new_jungle_tree
	},
	emergent_jungle_sapling = {
		name = "emergent jungle tree sapling",
		description = "emergent jungle tree",
		grow_func = flora.grow_new_emergent_jungle_tree
	},
	bush_sapling = {
		name = "bush sapling",
		description = "bush",
		grow_func = flora.grow_bush
	},
	blueberry_bush_sapling = {
		name = "blueberry bush sapling",
		description = "blueberry bush",
		grow_func = flora.grow_blueberry_bush
	},
	acacia_bush_sapling = {
		name = "acacia bush sapling",
		description = "acacia bush",
		grow_func = flora.grow_acacia_bush
	},
	pine_bush_sapling = {
		name = "pine bush sapling",
		description = "pine bush",
		grow_func = flora.grow_pine_bush
	},
}

function flora.grow_sapling(pos)
	if not flora.can_grow(pos) then
		-- try again 5 min later
		minetest.get_node_timer(pos):start(300)
		return
	end
	local node = minetest.get_node(pos)
	-- Reads everything after the semicolon
	local nodename = string.match(node.name, ':(.*)')
	for key in pairs(flora.saplings) do
		if nodename == key then
			local data = flora.saplings[nodename]
			minetest.log("action", "A " .. data.name .. " grows into a " .. data.description .. " at ".. minetest.pos_to_string(pos))
			data.grow_func(pos)
		end
	end
end

function flora.select_pine_tree(pos)
	local snow = is_snow_nearby(pos)
	if snow then
		flora.grow_new_snowy_pine_tree(pos)
	else
		flora.grow_new_pine_tree(pos)
	end
end

minetest.register_lbm({
	name = "flora:convert_saplings_to_node_timer",
	nodenames = {"flora:sapling", "flora:junglesapling",
			"flora:pine_sapling", "flora:acacia_sapling",
			"flora:aspen_sapling", "flora:cherry_sapling",
			"flora:bone_sapling",
			"flora:sapling_big", "flora:emergent_jungle_sapling",
			"flora:pine_sapling_big", "flora:acacia_sapling_big",
			"flora:aspen_sapling_big", "flora:cherry_sapling_big",
			"flora:bone_sapling_big"},
	action = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end
})

--
-- Tree generation
--

-- Apple tree and jungle tree trunk and leaves function

local function add_trunk_and_leaves(data, a, pos, tree_cid, leaves_cid,
		height, size, iters, is_apple_tree)
	local x, y, z = pos.x, pos.y, pos.z
	local c_air = minetest.get_content_id("air")
	local c_ignore = minetest.get_content_id("ignore")
	local c_apple = minetest.get_content_id("flora:apple")

	-- Trunk
	data[a:index(x, y, z)] = tree_cid -- Force-place lowest trunk node to replace sapling
	for yy = y + 1, y + height - 1 do
		local vi = a:index(x, yy, z)
		local node_id = data[vi]
		if node_id == c_air or node_id == c_ignore or node_id == leaves_cid then
			data[vi] = tree_cid
		end
	end

	-- Force leaves near the trunk
	for z_dist = -1, 1 do
	for y_dist = -size, 1 do
		local vi = a:index(x - 1, y + height + y_dist, z + z_dist)
		for x_dist = -1, 1 do
			if data[vi] == c_air or data[vi] == c_ignore then
				if is_apple_tree and random(1, 8) == 1 then
					data[vi] = c_apple
				else
					data[vi] = leaves_cid
				end
			end
			vi = vi + 1
		end
	end
	end

	-- Randomly add leaves in 2x2x2 clusters.
	for i = 1, iters do
		local clust_x = x + random(-size, size - 1)
		local clust_y = y + height + random(-size, 0)
		local clust_z = z + random(-size, size - 1)

		for xi = 0, 1 do
		for yi = 0, 1 do
		for zi = 0, 1 do
			local vi = a:index(clust_x + xi, clust_y + yi, clust_z + zi)
			if data[vi] == c_air or data[vi] == c_ignore then
				if is_apple_tree and random(1, 8) == 1 then
					data[vi] = c_apple
				else
					data[vi] = leaves_cid
				end
			end
		end
		end
		end
	end
end


-- Apple tree

function flora.grow_tree(pos, is_apple_tree, bad)
	--[[
		NOTE: Tree-placing code is currently duplicated in the engine
		and in games that have saplings; both are deprecated but not
		replaced yet
	--]]
	if bad then
		error("Deprecated use of flora.grow_tree")
	end

	local x, y, z = pos.x, pos.y, pos.z
	local height = random(4, 5)
	local c_tree = minetest.get_content_id("flora:tree")
	local c_leaves = minetest.get_content_id("flora:leaves")

	local vm = minetest.get_voxel_manip()
	local minp, maxp = vm:read_from_map(
		{x = x - 2, y = y, z = z - 2},
		{x = x + 2, y = y + height + 1, z = z + 2}
	)
	local a = VoxelArea:new({MinEdge = minp, MaxEdge = maxp})
	local data = vm:get_data()

	add_trunk_and_leaves(data, a, pos, c_tree, c_leaves, height, 2, 8, is_apple_tree)

	vm:set_data(data)
	vm:write_to_map()
	vm:update_map()
end


-- Jungle tree

function flora.grow_jungle_tree(pos, bad)
	--[[
		NOTE: Jungletree-placing code is currently duplicated in the engine
		and in games that have saplings; both are deprecated but not
		replaced yet
	--]]
	if bad then
		error("Deprecated use of flora.grow_jungle_tree")
	end

	local x, y, z = pos.x, pos.y, pos.z
	local height = random(8, 12)
	local c_air = minetest.get_content_id("air")
	local c_ignore = minetest.get_content_id("ignore")
	local c_jungletree = minetest.get_content_id("flora:jungletree")
	local c_jungleleaves = minetest.get_content_id("flora:jungleleaves")

	local vm = minetest.get_voxel_manip()
	local minp, maxp = vm:read_from_map(
		{x = x - 3, y = y - 1, z = z - 3},
		{x = x + 3, y = y + height + 1, z = z + 3}
	)
	local a = VoxelArea:new({MinEdge = minp, MaxEdge = maxp})
	local data = vm:get_data()

	add_trunk_and_leaves(data, a, pos, c_jungletree, c_jungleleaves,
		height, 3, 30, false)

	-- Roots
	for z_dist = -1, 1 do
		local vi_1 = a:index(x - 1, y - 1, z + z_dist)
		local vi_2 = a:index(x - 1, y, z + z_dist)
		for x_dist = -1, 1 do
			if random(1, 3) >= 2 then
				if data[vi_1] == c_air or data[vi_1] == c_ignore then
					data[vi_1] = c_jungletree
				elseif data[vi_2] == c_air or data[vi_2] == c_ignore then
					data[vi_2] = c_jungletree
				end
			end
			vi_1 = vi_1 + 1
			vi_2 = vi_2 + 1
		end
	end

	vm:set_data(data)
	vm:write_to_map()
	vm:update_map()
end


-- Pine tree from mg mapgen mod, design by sfan5, pointy top added by paramat

local function add_pine_needles(data, vi, c_air, c_ignore, c_snow, c_pine_needles)
	local node_id = data[vi]
	if node_id == c_air or node_id == c_ignore or node_id == c_snow then
		data[vi] = c_pine_needles
	end
end

local function add_snow(data, vi, c_air, c_ignore, c_snow)
	local node_id = data[vi]
	if node_id == c_air or node_id == c_ignore then
		data[vi] = c_snow
	end
end

function flora.grow_pine_tree(pos, snow)
	local x, y, z = pos.x, pos.y, pos.z
	local maxy = y + random(9, 13) -- Trunk top

	local c_air = minetest.get_content_id("air")
	local c_ignore = minetest.get_content_id("ignore")
	local c_pine_tree = minetest.get_content_id("flora:pine_tree")
	local c_pine_needles  = minetest.get_content_id("flora:pine_needles")
	local c_snow = minetest.get_content_id("blocks:snow")

	local vm = minetest.get_voxel_manip()
	local minp, maxp = vm:read_from_map(
		{x = x - 3, y = y, z = z - 3},
		{x = x + 3, y = maxy + 3, z = z + 3}
	)
	local a = VoxelArea:new({MinEdge = minp, MaxEdge = maxp})
	local data = vm:get_data()

	-- Upper branches layer
	local dev = 3
	for yy = maxy - 1, maxy + 1 do
		for zz = z - dev, z + dev do
			local vi = a:index(x - dev, yy, zz)
			local via = a:index(x - dev, yy + 1, zz)
			for xx = x - dev, x + dev do
				if random() < 0.95 - dev * 0.05 then
					add_pine_needles(data, vi, c_air, c_ignore, c_snow,
						c_pine_needles)
					if snow then
						add_snow(data, via, c_air, c_ignore, c_snow)
					end
				end
				vi  = vi + 1
				via = via + 1
			end
		end
		dev = dev - 1
	end

	-- Centre top nodes
	add_pine_needles(data, a:index(x, maxy + 1, z), c_air, c_ignore, c_snow,
		c_pine_needles)
	add_pine_needles(data, a:index(x, maxy + 2, z), c_air, c_ignore, c_snow,
		c_pine_needles) -- Paramat added a pointy top node
	if snow then
		add_snow(data, a:index(x, maxy + 3, z), c_air, c_ignore, c_snow)
	end

	-- Lower branches layer
	local my = 0
	for i = 1, 20 do -- Random 2x2 squares of needles
		local xi = x + random(-3, 2)
		local yy = maxy + random(-6, -5)
		local zi = z + random(-3, 2)
		if yy > my then
			my = yy
		end
		for zz = zi, zi+1 do
			local vi = a:index(xi, yy, zz)
			local via = a:index(xi, yy + 1, zz)
			for xx = xi, xi + 1 do
				add_pine_needles(data, vi, c_air, c_ignore, c_snow,
					c_pine_needles)
				if snow then
					add_snow(data, via, c_air, c_ignore, c_snow)
				end
				vi  = vi + 1
				via = via + 1
			end
		end
	end

	dev = 2
	for yy = my + 1, my + 2 do
		for zz = z - dev, z + dev do
			local vi = a:index(x - dev, yy, zz)
			local via = a:index(x - dev, yy + 1, zz)
			for xx = x - dev, x + dev do
				if random() < 0.95 - dev * 0.05 then
					add_pine_needles(data, vi, c_air, c_ignore, c_snow,
						c_pine_needles)
					if snow then
						add_snow(data, via, c_air, c_ignore, c_snow)
					end
				end
				vi  = vi + 1
				via = via + 1
			end
		end
		dev = dev - 1
	end

	-- Trunk
	-- Force-place lowest trunk node to replace sapling
	data[a:index(x, y, z)] = c_pine_tree
	for yy = y + 1, maxy do
		local vi = a:index(x, yy, z)
		local node_id = data[vi]
		if node_id == c_air or node_id == c_ignore or
				node_id == c_pine_needles or node_id == c_snow then
			data[vi] = c_pine_tree
		end
	end

	vm:set_data(data)
	vm:write_to_map()
	vm:update_map()
end

--
-- Sapling 'on place' function to check protection of node and resulting tree volume
--

function flora.sapling_on_place(itemstack, placer, pointed_thing,
		sapling_name, minp_relative, maxp_relative, interval)
	-- Position of sapling
	local pos = pointed_thing.under
	local node = minetest.get_node_or_nil(pos)
	local pdef = node and minetest.registered_nodes[node.name]

	if pdef and pdef.on_rightclick and
			not (placer and placer:is_player() and
			placer:get_player_control().sneak) then
		return pdef.on_rightclick(pos, node, placer, itemstack, pointed_thing)
	end

	if not pdef or not pdef.buildable_to then
		pos = pointed_thing.above
		node = minetest.get_node_or_nil(pos)
		pdef = node and minetest.registered_nodes[node.name]
		if not pdef or not pdef.buildable_to then
			return itemstack
		end
	end

	local player_name = placer and placer:get_player_name() or ""
	-- Check sapling position for protection
	if minetest.is_protected(pos, player_name) then
		minetest.record_protection_violation(pos, player_name)
		return itemstack
	end
	-- Check tree volume for protection
	if minetest.is_area_protected(
			vector.add(pos, minp_relative),
			vector.add(pos, maxp_relative),
			player_name,
			interval) then
		minetest.record_protection_violation(pos, player_name)
		-- Print extra information to explain
--		minetest.chat_send_player(player_name,
--			itemstack:get_definition().description .. " will intersect protection " ..
--			"on growth")
		minetest.chat_send_player(player_name,
		    S("@1 will intersect protection on growth.",
			itemstack:get_definition().description))
		return itemstack
	end

	minetest.log("action", player_name .. " places node "
			.. sapling_name .. " at " .. minetest.pos_to_string(pos))

	local take_item = not minetest.is_creative_enabled(player_name)
	local newnode = {name = sapling_name}
	local ndef = minetest.registered_nodes[sapling_name]
	minetest.set_node(pos, newnode)

	-- Run callback
	if ndef and ndef.after_place_node then
		-- Deepcopy place_to and pointed_thing because callback can modify it
		if ndef.after_place_node(table.copy(pos), placer,
				itemstack, table.copy(pointed_thing)) then
			take_item = false
		end
	end

	-- Run script hook
	for _, callback in ipairs(minetest.registered_on_placenodes) do
		-- Deepcopy pos, node and pointed_thing because callback can modify them
		if callback(table.copy(pos), table.copy(newnode),
				placer, table.copy(node or {}),
				itemstack, table.copy(pointed_thing)) then
			take_item = false
		end
	end

	if take_item then
		itemstack:take_item()
	end

	return itemstack
end

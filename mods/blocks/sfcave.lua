--
--  Surface Caves
--

-- support for MT game translation.
local S = default.get_translator

minetest.register_node("blocks:dirt_with_grass_sfcave", {
	description = S("Dirt with Grass"),
	tiles = {"blocks_grass.png", "blocks_dirt.png",
		{name = "blocks_dirt.png^blocks_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1, not_in_creative_inventory = 1},
	drop = "blocks:dirt",
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
})

minetest.register_node("blocks:dry_dirt_with_dry_grass_sfcave", {
	description = S("Dry Dirt with Savanna Grass"),
	tiles = {"blocks_dry_grass.png", "blocks_dry_dirt.png",
		{name = "blocks_dry_dirt.png^blocks_dry_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, not_in_creative_inventory = 1},
	drop = "blocks:dry_dirt",
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.4},
	}),
})
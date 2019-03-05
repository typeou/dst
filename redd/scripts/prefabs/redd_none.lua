local assets =
{
	Asset( "ANIM", "anim/redd.zip" ),
	Asset( "ANIM", "anim/ghost_redd_build.zip" ),
}

local skins =
{
	normal_skin = "redd",
	ghost_skin = "ghost_redd_build",
}

local base_prefab = "redd"

local tags = {"REDD", "CHARACTER"}

return CreatePrefabSkin("redd_none",
{
	base_prefab = base_prefab, 
	skins = skins, 
	assets = assets,
	tags = tags,
	
	skip_item_gen = true,
	skip_giftable_gen = true,
})
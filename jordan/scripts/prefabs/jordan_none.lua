local assets =
{
	Asset( "ANIM", "anim/jordan.zip" ),
	Asset( "ANIM", "anim/ghost_jordan_build.zip" ),
}

local skins =
{
	normal_skin = "jordan",
	ghost_skin = "ghost_jordan_build",
}

local base_prefab = "jordan"

local tags = {"JORDAN", "CHARACTER"}

return CreatePrefabSkin("jordan_none",
{
	base_prefab = base_prefab, 
	skins = skins, 
	assets = assets,
	tags = tags,
	
	skip_item_gen = true,
	skip_giftable_gen = true,
})
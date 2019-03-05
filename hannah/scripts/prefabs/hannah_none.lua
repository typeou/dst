local assets =
{
	Asset( "ANIM", "anim/hannah.zip" ),
	Asset( "ANIM", "anim/ghost_hannah_build.zip" ),
}

local skins =
{
	normal_skin = "hannah",
	ghost_skin = "ghost_hannah_build",
}

local base_prefab = "hannah"

local tags = {"HANNAH", "CHARACTER"}

return CreatePrefabSkin("hannah_none",
{
	base_prefab = base_prefab, 
	skins = skins, 
	assets = assets,
	tags = tags,
	
	skip_item_gen = true,
	skip_giftable_gen = true,
})
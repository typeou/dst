local assets =
{
	Asset( "ANIM", "anim/kendov.zip" ),
	Asset( "ANIM", "anim/ghost_kendov_build.zip" ),
}

local skins =
{
	normal_skin = "kendov",
	ghost_skin = "ghost_kendov_build",
}

local base_prefab = "kendov"

local tags = {"KENDOV", "CHARACTER"}

return CreatePrefabSkin("kendov_none",
{
	base_prefab = base_prefab, 
	skins = skins, 
	assets = assets,
	tags = tags,
	
	skip_item_gen = true,
	skip_giftable_gen = true,
})
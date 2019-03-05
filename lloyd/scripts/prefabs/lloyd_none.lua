local assets =
{
	Asset( "ANIM", "anim/lloyd.zip" ),
	Asset( "ANIM", "anim/ghost_lloyd_build.zip" ),
}

local skins =
{
	normal_skin = "lloyd",
	ghost_skin = "ghost_lloyd_build",
}

local base_prefab = "lloyd"

local tags = {"ESCTEMPLATE", "CHARACTER"}

return CreatePrefabSkin("lloyd_none",
{
	base_prefab = base_prefab, 
	skins = skins, 
	assets = assets,
	tags = tags,
	
	skip_item_gen = true,
	skip_giftable_gen = true,
})
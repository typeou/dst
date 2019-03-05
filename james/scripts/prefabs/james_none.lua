local assets =
{
	Asset( "ANIM", "anim/james.zip" ),
	Asset( "ANIM", "anim/ghost_james_build.zip" ),
}

local skins =
{
	normal_skin = "james",
	ghost_skin = "ghost_james_build",
}

local base_prefab = "james"

local tags = {"JAMES", "CHARACTER"}

return CreatePrefabSkin("james_none",
{
	base_prefab = base_prefab, 
	skins = skins, 
	assets = assets,
	tags = tags,
	
	skip_item_gen = true,
	skip_giftable_gen = true,
})
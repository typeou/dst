local assets =
{
	Asset( "ANIM", "anim/celeste.zip" ),
	Asset( "ANIM", "anim/ghost_celeste_build.zip" ),
}

local skins =
{
	normal_skin = "celeste",
	ghost_skin = "ghost_celeste_build",
}

local base_prefab = "celeste"

local tags = {"CELESTE", "CHARACTER"}

return CreatePrefabSkin("celeste_none",
{
	base_prefab = base_prefab, 
	skins = skins, 
	assets = assets,
	tags = tags,
	
	skip_item_gen = true,
	skip_giftable_gen = true,
})
local assets =
{
	Asset( "ANIM", "anim/loney.zip" ),
	Asset( "ANIM", "anim/ghost_loney_build.zip" ),
}

local skins =
{
	normal_skin = "loney",
	ghost_skin = "ghost_loney_build",
}

local base_prefab = "loney"

local tags = {"LONEY", "CHARACTER"}

return CreatePrefabSkin("loney_none",
{
	base_prefab = base_prefab, 
	skins = skins, 
	assets = assets,
	tags = tags,
	
	skip_item_gen = true,
	skip_giftable_gen = true,
})
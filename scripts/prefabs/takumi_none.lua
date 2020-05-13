local assets =
{
	Asset( "ANIM", "anim/takumi.zip" ),
	Asset( "ANIM", "anim/ghost_takumi_build.zip" ),
}

local skins =
{
	normal_skin = "takumi",
	ghost_skin = "ghost_takumi_build",
}

local base_prefab = "takumi"

local tags = {"TAKUMI", "CHARACTER"}

return CreatePrefabSkin("takumi_none",
{
	base_prefab = base_prefab, 
	skins = skins, 
	assets = assets,
	tags = tags,
	
	skip_item_gen = true,
	skip_giftable_gen = true,
})
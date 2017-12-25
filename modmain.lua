PrefabFiles = {
	"takumi",
	"takumi_none",
    "yumi",
    "windarrow",
    "fujinlight",   
	"takumi_dirtpile",
	"takumi_track",
	"takumitrap",
	"takumi_seal"
}

Assets = {
    Asset( "IMAGE", "images/saveslot_portraits/takumi.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/takumi.xml" ),

    Asset( "IMAGE", "images/selectscreen_portraits/takumi.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/takumi.xml" ),
	
    Asset( "IMAGE", "images/selectscreen_portraits/takumi_silho.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/takumi_silho.xml" ),

    Asset( "IMAGE", "bigportraits/takumi.tex" ),
    Asset( "ATLAS", "bigportraits/takumi.xml" ),
	
	Asset( "IMAGE", "images/map_icons/takumi.tex" ),
	Asset( "ATLAS", "images/map_icons/takumi.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_takumi.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_takumi.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_ghost_takumi.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_ghost_takumi.xml" ),
	
	Asset( "IMAGE", "images/avatars/self_inspect_takumi.tex" ),
    Asset( "ATLAS", "images/avatars/self_inspect_takumi.xml" ),
	
	Asset( "IMAGE", "images/names_takumi.tex" ),
    Asset( "ATLAS", "images/names_takumi.xml" ),
	
    Asset( "IMAGE", "bigportraits/takumi_none.tex" ),
    Asset( "ATLAS", "bigportraits/takumi_none.xml" ),

	
	Asset( "IMAGE", "images/takumitab.tex" ),
    Asset( "ATLAS", "images/takumitab.xml" ),
	
	Asset( "IMAGE", "images/inventoryimages/takumitrap.tex" ),
	Asset("ATLAS", "images/inventoryimages/takumitrap.xml"),
	
	
	Asset( "IMAGE", "images/inventoryimages/takumi_seal.tex" ),
	Asset("ATLAS", "images/inventoryimages/takumi_seal.xml"),
}

local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS
local RECIPETABS = GLOBAL.RECIPETABS
local TECH = GLOBAL.TECH
local Ingredient = GLOBAL.Ingredient

--item names
STRINGS.NAMES.YUMI = "Fujin Yumi"
STRINGS.NAMES.TAKUMI_DIRTPILE = "Suspicious Dirt Pile"
STRINGS.NAMES.TAKUMI_TRACK = "Track"
STRINGS.NAMES.TAKUMITRAP = "Takumi's Trap"
STRINGS.NAMES.TAKUMI_SEAL = "Master Seal."

STRINGS.CHARACTERS.GENERIC.DESCRIBE.YUMI = "A bow without a bowstring."
STRINGS.CHARACTERS.GENERIC.DESCRIBE.TAKUMITRAP = "A sturdy, well-made trap."
--STRINGS.CHARACTERS.TAKUMI.DESCRIBE.YUMI = "The Fujin Yumi. The bow chose me as its wielder."
STRINGS.RECIPE_DESC.TAKUMITRAP = "A sturdier trap made by a hunter." 
STRINGS.RECIPE_DESC.TAKUMI_SEAL = "Used to promote at level 20."

-- The character select screen lines
STRINGS.CHARACTER_TITLES.takumi = "The Wildcard"
STRINGS.CHARACTER_NAMES.takumi = "Takumi"
STRINGS.CHARACTER_DESCRIPTIONS.takumi = "*Wielder of the Divine Bow\n*Distrustful"
STRINGS.CHARACTER_QUOTES.takumi = "\"You can count on me...no matter what some may say.\""

-- Custom speech strings
STRINGS.CHARACTERS.TAKUMI = require "speech_takumi"

-- The character's name as appears in-game 
STRINGS.NAMES.TAKUMI = "Takumi"

AddMinimapAtlas("images/map_icons/takumi.xml")

-- Add mod character to mod character list. Also specify a gender. Possible genders are MALE, FEMALE, ROBOT, NEUTRAL, and PLURAL.
AddModCharacter("takumi", "MALE")

--add hunter skill (Michael)
function WorldPrefabPostInit(inst)
		inst:AddComponent("takumihunter")
end
--add item and recipie tab
RECIPETABS.TAKUMI = {str = "TAKUMI", sort = 19, icon = "takumitab.tex", icon_atlas = "images/takumitab.xml"}

local takumi_trap = AddRecipe("takumitrap", {Ingredient("twigs", 2),Ingredient("cutgrass", 6)}, RECIPETABS.TAKUMI, TECH.NONE, nil, nil, nil, nil, "takumi" )
takumi_trap.atlas = "images/inventoryimages/takumitrap.xml"


local takumi_seal = AddRecipe("takumi_seal", {Ingredient("goldnugget", 20),Ingredient("gears", 1),Ingredient("redgem", 1)}, RECIPETABS.TAKUMI, TECH.NONE, nil, nil, nil, nil, "takumi" )
takumi_seal.atlas = "images/inventoryimages/takumi_seal.xml"


if GLOBAL.TheNet:GetIsServer() then
	AddPrefabPostInit("world", WorldPrefabPostInit)
end








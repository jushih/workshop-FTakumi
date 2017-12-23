PrefabFiles = {
	"takumi",
	"takumi_none",
        "yumi",
        "windarrow",
        "fujinlight",   
		"takumi_dirtpile",
		"takumi_track",
		"takumitrap",
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

	
	Asset( "IMAGE", "images/yinyangtab.tex" ),
    Asset( "ATLAS", "images/yinyangtab.xml" ),
	
	Asset( "IMAGE", "images/inventoryimages/takumitrap.tex" ),
	Asset("ATLAS", "images/inventoryimages/takumitrap.xml"),
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

STRINGS.CHARACTERS.GENERIC.DESCRIBE.YUMI = "A bow without a bowstring."
--STRINGS.CHARACTERS.TAKUMI.DESCRIBE.YUMI = "The Fujin Yumi. The bow chose me as its wielder."

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
--add item and recipie tabl
RECIPETABS.TAKUMI = {str = "TAKUMI", sort = 19, icon = "yinyangtab.tex", icon_atlas = "images/yinyangtab.xml"}
--Recipe("takumitrap", {Ingredient("twigs", 2),Ingredient("cutgrass", 6)}, RECIPETABS.TAKUMI, TECH.NONE)

local takumi_trap = AddRecipe("takumitrap", {Ingredient("twigs", 2),Ingredient("cutgrass", 6)}, RECIPETABS.TAKUMI, TECH.NONE, nil, nil, nil, nil, "takumi" )
takumi_trap.atlas = "images/inventoryimages/takumitrap.xml"


if GLOBAL.TheNet:GetIsServer() then
	AddPrefabPostInit("world", WorldPrefabPostInit)
end







PrefabFiles = {
	"james",
	"james_none",
	"blacksmithhammer",
	"grassspike_armor",
	"thermalstone_armor",
}

Assets = {
    Asset( "IMAGE", "images/saveslot_portraits/james.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/james.xml" ),

    Asset( "IMAGE", "images/selectscreen_portraits/james.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/james.xml" ),
	
    Asset( "IMAGE", "images/selectscreen_portraits/james_silho.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/james_silho.xml" ),

    Asset( "IMAGE", "bigportraits/james.tex" ),
    Asset( "ATLAS", "bigportraits/james.xml" ),
	
	Asset( "IMAGE", "images/map_icons/james.tex" ),
	Asset( "ATLAS", "images/map_icons/james.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_james.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_james.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_ghost_james.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_ghost_james.xml" ),
	
	Asset( "IMAGE", "images/avatars/self_inspect_james.tex" ),
    Asset( "ATLAS", "images/avatars/self_inspect_james.xml" ),
	
	Asset( "IMAGE", "images/names_james.tex" ),
    Asset( "ATLAS", "images/names_james.xml" ),
	
    Asset( "IMAGE", "bigportraits/james_none.tex" ),
    Asset( "ATLAS", "bigportraits/james_none.xml" ),
	
	Asset("IMAGE", "images/inventoryimages/blacksmithhammer.tex"),	
	Asset("ATLAS", "images/inventoryimages/blacksmithhammer.xml"),
	
	Asset("IMAGE", "images/inventoryimages/grassspike_armor.tex"),	
	Asset("ATLAS", "images/inventoryimages/grassspike_armor.xml"),

	Asset("IMAGE", "images/inventoryimages/thermalstone_armor.tex"),	
	Asset("ATLAS", "images/inventoryimages/thermalstone_armor.xml"),
}

local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS

local AllRecipes = GLOBAL.AllRecipes
local RECIPETABS = GLOBAL.RECIPETABS
local TECH = GLOBAL.TECH

-- local jameshammer = Recipe("", {Ingredient("", ), Ingredient("", ), Ingredient("", )}, RECIPETABS.,  TECH., nil, nil, nil, nil, "jamesblacksmith")
-- jameshammer.atlas = GLOBAL.AllRecipes.hammer.atlas
-- jameshammer.image = GLOBAL.AllRecipes.hammer.image
-- STRINGS.RECIPE_DESC.BLACKSMITHHAMMER = ""
GLOBAL.STRINGS.NAMES.BLACKSMITHHAMMER = "Blacksmith's Hammer"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.BLACKSMITHHAMMER = "A regular hammer, but better!"
-- AllRecipes["grassspike_armor"].sortkey = -310

local jamesarmor1 = Recipe("grassspike_armor", {Ingredient("armorgrass", 1), Ingredient("pigskin", 3), Ingredient("houndstooth", 4)}, RECIPETABS.WAR,  TECH.NONE, nil, nil, nil, nil, "jamesblacksmith")
jamesarmor1.atlas = GLOBAL.AllRecipes.armorgrass.atlas
jamesarmor1.image = GLOBAL.AllRecipes.armorgrass.image
STRINGS.RECIPE_DESC.GRASSSPIKE_ARMOR = "Hope this works! -Jordan"
GLOBAL.STRINGS.NAMES.GRASSSPIKE_ARMOR = "Houndsbane Armor"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.GRASSSPIKE_ARMOR = "Better be careful wearing this."
AllRecipes["grassspike_armor"].sortkey = -311

local jamesarmor2 = Recipe("thermalstone_armor", {Ingredient("cutstone", 3), Ingredient("rope",1), Ingredient("heatrock",1)}, RECIPETABS.WAR, TECH.NONE, nil, nil, nil, nil, "jamesblacksmith")
jamesarmor2.atlas = GLOBAL.AllRecipes.armormarble.atlas
jamesarmor2.image = GLOBAL.AllRecipes.armormarble.image
STRINGS.RECIPE_DESC.THERMALSTONE_ARMOR = "Hope this works! -Jordan"
GLOBAL.STRINGS.NAMES.THERMALSTONE_ARMOR = "Cement Armor"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.THERMALSTONE_ARMOR = "It seems to react to the temperature."
AllRecipes["thermalstone_armor"].sortkey = -312


-- The character select screen lines
STRINGS.CHARACTER_TITLES.james = "The Trash Hulk"
STRINGS.CHARACTER_NAMES.james = "James"
STRINGS.CHARACTER_DESCRIPTIONS.james = "*Slow but powerful\n*Loves fire, freezes quickly\n*Is a blacksmith"
STRINGS.CHARACTER_QUOTES.james = "\"Quote\""

-- Custom speech strings
STRINGS.CHARACTERS.JAMES = require "speech_james"

-- The character's name as appears in-game 
STRINGS.NAMES.JAMES = "James"

AddMinimapAtlas("images/map_icons/james.xml")

-- Add mod character to mod character list. Also specify a gender. Possible genders are MALE, FEMALE, ROBOT, NEUTRAL, and PLURAL.
AddModCharacter("james", "MALE")


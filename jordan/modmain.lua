PrefabFiles = {
	"jordan",
	"jordan_none",
}

Assets = {
    Asset( "IMAGE", "images/saveslot_portraits/jordan.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/jordan.xml" ),

    Asset( "IMAGE", "images/selectscreen_portraits/jordan.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/jordan.xml" ),
	
    Asset( "IMAGE", "images/selectscreen_portraits/jordan_silho.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/jordan_silho.xml" ),

    Asset( "IMAGE", "bigportraits/jordan.tex" ),
    Asset( "ATLAS", "bigportraits/jordan.xml" ),
	
	Asset( "IMAGE", "images/map_icons/jordan.tex" ),
	Asset( "ATLAS", "images/map_icons/jordan.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_jordan.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_jordan.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_ghost_jordan.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_ghost_jordan.xml" ),
	
	Asset( "IMAGE", "images/avatars/self_inspect_jordan.tex" ),
    Asset( "ATLAS", "images/avatars/self_inspect_jordan.xml" ),
	
	Asset( "IMAGE", "images/names_jordan.tex" ),
    Asset( "ATLAS", "images/names_jordan.xml" ),
	
    Asset( "IMAGE", "bigportraits/jordan_none.tex" ),
    Asset( "ATLAS", "bigportraits/jordan_none.xml" ),

	Asset("IMAGE", "images/inventoryimages/temp.tex"),	
	Asset("ATLAS", "images/inventoryimages/temp.xml"),
}

local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS

local AllRecipes = GLOBAL.AllRecipes
local RECIPETABS = GLOBAL.RECIPETABS
local TECH = GLOBAL.TECH

local jordcipe = Recipe("ice", {}, RECIPETABS.FARM, TECH.NONE, nil, nil, nil, nil, "jordanplaysinapuddle")
jordcipe.atlas = "images/inventoryimages/temp.xml"
jordcipe.image = "temp.tex"
AllRecipes["ice"].sortkey = -327

-- The character select screen lines
STRINGS.CHARACTER_TITLES.jordan = "The Proletarian"
STRINGS.CHARACTER_NAMES.jordan = "Jordan"
STRINGS.CHARACTER_DESCRIPTIONS.jordan = "*Productive by day\n*Has a solution\n*Handle with care"
STRINGS.CHARACTER_QUOTES.jordan = "\"What can I do for you?\""

-- Custom speech strings
STRINGS.CHARACTERS.JORDAN = require "speech_jordan"

-- The character's name as appears in-game 
STRINGS.NAMES.JORDAN = "Jordan"

AddMinimapAtlas("images/map_icons/jordan.xml")

-- Add mod character to mod character list. Also specify a gender. Possible genders are MALE, FEMALE, ROBOT, NEUTRAL, and PLURAL.
AddModCharacter("jordan", "FEMALE")


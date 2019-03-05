PrefabFiles = {
	"loney",
	"loney_none",
}

Assets = {
    Asset( "IMAGE", "images/saveslot_portraits/loney.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/loney.xml" ),

    Asset( "IMAGE", "images/selectscreen_portraits/loney.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/loney.xml" ),
	
    Asset( "IMAGE", "images/selectscreen_portraits/loney_silho.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/loney_silho.xml" ),

    Asset( "IMAGE", "bigportraits/loney.tex" ),
    Asset( "ATLAS", "bigportraits/loney.xml" ),
	
	Asset( "IMAGE", "images/map_icons/loney.tex" ),
	Asset( "ATLAS", "images/map_icons/loney.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_loney.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_loney.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_ghost_loney.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_ghost_loney.xml" ),
	
	Asset( "IMAGE", "images/avatars/self_inspect_loney.tex" ),
    Asset( "ATLAS", "images/avatars/self_inspect_loney.xml" ),
	
	Asset( "IMAGE", "images/names_loney.tex" ),
    Asset( "ATLAS", "images/names_loney.xml" ),
	
    Asset( "IMAGE", "bigportraits/loney_none.tex" ),
    Asset( "ATLAS", "bigportraits/loney_none.xml" ),

}

local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS

-- The character select screen lines
STRINGS.CHARACTER_TITLES.loney = "The Woolen Rabbit"
STRINGS.CHARACTER_NAMES.loney = "Loney"
STRINGS.CHARACTER_DESCRIPTIONS.loney = "*Is warm and fuzzy\n*Hops to it\n*Doesn't hit very hard"
STRINGS.CHARACTER_QUOTES.loney = "\"Quote\""

-- Custom speech strings
STRINGS.CHARACTERS.LONEY = require "speech_loney"

-- The character's name as appears in-game 
STRINGS.NAMES.LONEY = "Loney"

AddMinimapAtlas("images/map_icons/loney.xml")

-- Add mod character to mod character list. Also specify a gender. Possible genders are MALE, FEMALE, ROBOT, NEUTRAL, and PLURAL.
AddModCharacter("loney", "MALE")


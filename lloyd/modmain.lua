PrefabFiles = {
	"lloyd",
	"lloyd_none",
}

Assets = {
    Asset( "IMAGE", "images/saveslot_portraits/lloyd.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/lloyd.xml" ),

    Asset( "IMAGE", "images/selectscreen_portraits/lloyd.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/lloyd.xml" ),
	
    Asset( "IMAGE", "images/selectscreen_portraits/lloyd_silho.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/lloyd_silho.xml" ),

    Asset( "IMAGE", "bigportraits/lloyd.tex" ),
    Asset( "ATLAS", "bigportraits/lloyd.xml" ),
	
	Asset( "IMAGE", "images/map_icons/lloyd.tex" ),
	Asset( "ATLAS", "images/map_icons/lloyd.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_lloyd.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_lloyd.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_ghost_lloyd.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_ghost_lloyd.xml" ),
	
	Asset( "IMAGE", "images/avatars/self_inspect_lloyd.tex" ),
    Asset( "ATLAS", "images/avatars/self_inspect_lloyd.xml" ),
	
	Asset( "IMAGE", "images/names_lloyd.tex" ),
    Asset( "ATLAS", "images/names_lloyd.xml" ),
	
    Asset( "IMAGE", "bigportraits/lloyd_none.tex" ),
    Asset( "ATLAS", "bigportraits/lloyd_none.xml" ),

}

local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS

-- The character select screen lines
STRINGS.CHARACTER_TITLES.lloyd = "The Magician's Rabbit"
STRINGS.CHARACTER_NAMES.lloyd = "Lloyd"
STRINGS.CHARACTER_DESCRIPTIONS.lloyd = "*Magically inclined\n*Second act\n*Eats more when stressed"
STRINGS.CHARACTER_QUOTES.lloyd = "\"A magician never reveals his secrets. But I'm the rabbit.\""

-- Custom speech strings
STRINGS.CHARACTERS.LLOYD = require "speech_lloyd"

-- The character's name as appears in-game 
STRINGS.NAMES.LLOYD = "Lloyd"

AddMinimapAtlas("images/map_icons/lloyd.xml")

-- Add mod character to mod character list. Also specify a gender. Possible genders are MALE, FEMALE, ROBOT, NEUTRAL, and PLURAL.
AddModCharacter("lloyd", "MALE")


PrefabFiles = {
	"hannah",
	"hannah_none",
}

Assets = {
    Asset( "IMAGE", "images/saveslot_portraits/hannah.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/hannah.xml" ),

    Asset( "IMAGE", "images/selectscreen_portraits/hannah.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/hannah.xml" ),
	
    Asset( "IMAGE", "images/selectscreen_portraits/hannah_silho.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/hannah_silho.xml" ),

    Asset( "IMAGE", "bigportraits/hannah.tex" ),
    Asset( "ATLAS", "bigportraits/hannah.xml" ),
	
	Asset( "IMAGE", "images/map_icons/hannah.tex" ),
	Asset( "ATLAS", "images/map_icons/hannah.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_hannah.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_hannah.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_ghost_hannah.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_ghost_hannah.xml" ),
	
	Asset( "IMAGE", "images/avatars/self_inspect_hannah.tex" ),
    Asset( "ATLAS", "images/avatars/self_inspect_hannah.xml" ),
	
	Asset( "IMAGE", "images/names_hannah.tex" ),
    Asset( "ATLAS", "images/names_hannah.xml" ),
	
    Asset( "IMAGE", "bigportraits/hannah_none.tex" ),
    Asset( "ATLAS", "bigportraits/hannah_none.xml" ),

}

local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS

-- The character select screen lines
STRINGS.CHARACTER_TITLES.hannah = "The "
STRINGS.CHARACTER_NAMES.hannah = "Hannah"
STRINGS.CHARACTER_DESCRIPTIONS.hannah = "*Likes to sew\n*Hits harder when stressed\n*Quick to hunger and stress"
STRINGS.CHARACTER_QUOTES.hannah = "\"Quote\""

-- Custom speech strings
STRINGS.CHARACTERS.HANNAH = require "speech_hannah"

-- The character's name as appears in-game 
STRINGS.NAMES.HANNAH = "Hannah"

AddMinimapAtlas("images/map_icons/hannah.xml")

-- Add mod character to mod character list. Also specify a gender. Possible genders are MALE, FEMALE, ROBOT, NEUTRAL, and PLURAL.
AddModCharacter("hannah", "FEMALE")


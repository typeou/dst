PrefabFiles = {
	"celeste",
	"celeste_none",
}

Assets = {
    Asset( "IMAGE", "images/saveslot_portraits/celeste.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/celeste.xml" ),

    Asset( "IMAGE", "images/selectscreen_portraits/celeste.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/celeste.xml" ),
	
    Asset( "IMAGE", "images/selectscreen_portraits/celeste_silho.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/celeste_silho.xml" ),

    Asset( "IMAGE", "bigportraits/celeste.tex" ),
    Asset( "ATLAS", "bigportraits/celeste.xml" ),
	
	Asset( "IMAGE", "images/map_icons/celeste.tex" ),
	Asset( "ATLAS", "images/map_icons/celeste.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_celeste.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_celeste.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_ghost_celeste.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_ghost_celeste.xml" ),
	
	Asset( "IMAGE", "images/avatars/self_inspect_celeste.tex" ),
    Asset( "ATLAS", "images/avatars/self_inspect_celeste.xml" ),
	
	Asset( "IMAGE", "images/names_celeste.tex" ),
    Asset( "ATLAS", "images/names_celeste.xml" ),
	
    Asset( "IMAGE", "bigportraits/celeste_none.tex" ),
    Asset( "ATLAS", "bigportraits/celeste_none.xml" ),

}

local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS

-- The character select screen lines
STRINGS.CHARACTER_TITLES.celeste = "The Ghost Hunter"
STRINGS.CHARACTER_NAMES.celeste = "Celeste"
STRINGS.CHARACTER_DESCRIPTIONS.celeste = "*Likes ghosts and graveyards\n*Stealthy hunter\n*Nervous, eats less when stressed"
STRINGS.CHARACTER_QUOTES.celeste = "\"Quote\""

-- Custom speech strings
STRINGS.CHARACTERS.CELESTE = require "speech_celeste"

-- The character's name as appears in-game 
STRINGS.NAMES.CELESTE = "Celeste"

AddMinimapAtlas("images/map_icons/celeste.xml")

-- Add mod character to mod character list. Also specify a gender. Possible genders are MALE, FEMALE, ROBOT, NEUTRAL, and PLURAL.
AddModCharacter("celeste", "NEUTRAL")


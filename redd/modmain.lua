PrefabFiles = {
	"redd",
	"redd_none",
}

Assets = {
    Asset( "IMAGE", "images/saveslot_portraits/redd.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/redd.xml" ),

    Asset( "IMAGE", "images/selectscreen_portraits/redd.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/redd.xml" ),
	
    Asset( "IMAGE", "images/selectscreen_portraits/redd_silho.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/redd_silho.xml" ),

    Asset( "IMAGE", "bigportraits/redd.tex" ),
    Asset( "ATLAS", "bigportraits/redd.xml" ),
	
	Asset( "IMAGE", "images/map_icons/redd.tex" ),
	Asset( "ATLAS", "images/map_icons/redd.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_redd.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_redd.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_ghost_redd.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_ghost_redd.xml" ),
	
	Asset( "IMAGE", "images/avatars/self_inspect_redd.tex" ),
    Asset( "ATLAS", "images/avatars/self_inspect_redd.xml" ),
	
	Asset( "IMAGE", "images/names_redd.tex" ),
    Asset( "ATLAS", "images/names_redd.xml" ),
	
    Asset( "IMAGE", "bigportraits/redd_none.tex" ),
    Asset( "ATLAS", "bigportraits/redd_none.xml" ),
	
	Asset("IMAGE", "images/inventoryimages/temp.tex"),	
	Asset("ATLAS", "images/inventoryimages/temp.xml"),

}

local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS

local AllRecipes = GLOBAL.AllRecipes
local CHARACTER_INGREDIENT = GLOBAL.CHARACTER_INGREDIENT
local RECIPETABS = GLOBAL.RECIPETABS
local TECH = GLOBAL.TECH

local reddcipe1 = Recipe("reviverredd", {Ingredient("cutgrass", 2), Ingredient("spidergland", 1), Ingredient(CHARACTER_INGREDIENT.HEALTH, 20)}, RECIPETABS.SURVIVAL,  TECH.NONE, nil, nil, nil, nil, "healer")
reddcipe1.product = "reviver"
reddcipe1.atlas = GLOBAL.AllRecipes.reviver.atlas
reddcipe1.image = GLOBAL.AllRecipes.reviver.image
STRINGS.RECIPE_DESC.REVIVERREDD = "Ghastly revival of a ghostly friend. For cheaper!"
GLOBAL.STRINGS.NAMES.REVIVERREDD = "Telltale Heart"
AllRecipes["reviverredd"].sortkey = -992
local reddcipe2 = Recipe("healingsalveredd", {Ingredient("ash", 1), Ingredient("rocks", 3), Ingredient("spidergland",1)}, RECIPETABS.SURVIVAL,  TECH.NONE, nil, nil, nil, nil, "healer")
reddcipe2.product = "healingsalve"
reddcipe2.atlas = GLOBAL.AllRecipes.healingsalve.atlas
reddcipe2.image = GLOBAL.AllRecipes.healingsalve.image
STRINGS.RECIPE_DESC.HEALINGSALVEREDD = "Disinfectant for cuts and abrasions. For cheaper!"
GLOBAL.STRINGS.NAMES.HEALINGSALVEREDD = "Healing Salve"
AllRecipes["healingsalveredd"].sortkey = -982
local reddcipe3 = Recipe("bandageredd", {Ingredient("papyrus", 1), Ingredient("honey", 1)}, RECIPETABS.SURVIVAL,  TECH.SCIENCE_ONE, nil, nil, nil, nil, "healer")
reddcipe3.product = "bandage"
reddcipe3.atlas = GLOBAL.AllRecipes.bandage.atlas
reddcipe3.image = GLOBAL.AllRecipes.bandage.image
STRINGS.RECIPE_DESC.BANDAGEREDD = "Heal your minor wounds. For cheaper!"
GLOBAL.STRINGS.NAMES.BANDAGEREDD = "Honey Poultice"
AllRecipes["bandageredd"].sortkey = -928
local reddcipe4 = Recipe("lifeinjectorredd", {Ingredient("spoiled_food", 4), Ingredient("nitre", 1), Ingredient("stinger",1)}, RECIPETABS.SURVIVAL,  TECH.SCIENCE_ONE, nil, nil, nil, nil, "healer")
reddcipe4.product = "lifeinjector"
reddcipe4.atlas = GLOBAL.AllRecipes.lifeinjector.atlas
reddcipe4.image = GLOBAL.AllRecipes.lifeinjector.image
STRINGS.RECIPE_DESC.LIFEINJECTORREDD = "Boosts your declining max health. For cheaper!"
GLOBAL.STRINGS.NAMES.LIFEINJECTORREDD = "Booster Shot"
AllRecipes["lifeinjectorredd"].sortkey = -590

GLOBAL.AllRecipes.reviver.builder_tag = "isnotredd"
GLOBAL.AllRecipes.healingsalve.builder_tag = "isnotredd"
GLOBAL.AllRecipes.bandage.builder_tag = "isnotredd"
GLOBAL.AllRecipes.lifeinjector.builder_tag = "isnotredd"


AddComponentPostInit("builder", function(self)
	self.inst:DoTaskInTime(0, function()
		if self.inst and self.inst.prefab ~= "redd" then
			self.inst:AddTag("isnotredd")
		end
	end)
end)

-- The character select screen lines
STRINGS.CHARACTER_TITLES.redd = "The Caretaker"
STRINGS.CHARACTER_NAMES.redd = "Redd"
STRINGS.CHARACTER_DESCRIPTIONS.redd = "*Efficient healer\n*People pleaser\n*Gourmand"
STRINGS.CHARACTER_QUOTES.redd = "\"Bad day? Why don't you tell me about it?\""

-- Custom speech strings
STRINGS.CHARACTERS.REDD = require "speech_redd"

-- The character's name as appears in-game 
STRINGS.NAMES.REDD = "Redd"

AddMinimapAtlas("images/map_icons/redd.xml")

-- Add mod character to mod character list. Also specify a gender. Possible genders are MALE, FEMALE, ROBOT, NEUTRAL, and PLURAL.
AddModCharacter("redd", "MALE")


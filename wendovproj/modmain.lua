local STRINGS = GLOBAL.STRINGS
local Recipe = GLOBAL.Recipe
local Ingredient = GLOBAL.Ingredient
local TECH = GLOBAL.TECH
local TUNING = GLOBAL.TUNING
local ACTIONS = GLOBAL.ACTIONS
local Action = GLOBAL.Action
local require = GLOBAL.require
local Builder = require "components/builder"
local AllRecipes = GLOBAL.AllRecipes
local CUSTOM_RECIPETABS = GLOBAL.CUSTOM_RECIPETABS
local GetValidRecipe = GLOBAL.GetValidRecipe
local RECIPETABS = GLOBAL.RECIPETABS
local TheInput = GLOBAL.TheInput
local ThePlayer = GLOBAL.ThePlayer
local IsServer = GLOBAL.TheNet:GetIsServer()

PrefabFiles = {
	"kendov",
	"kendov_none",
	"humanblood",
	"blood",
	"largeblood",
	"monsterblood",
	"smallblood",
}

Assets = {
    Asset( "IMAGE", "images/saveslot_portraits/kendov.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/kendov.xml" ),

    Asset( "IMAGE", "images/selectscreen_portraits/kendov.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/kendov.xml" ),
	
    Asset( "IMAGE", "images/selectscreen_portraits/kendov_silho.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/kendov_silho.xml" ),

    Asset( "IMAGE", "bigportraits/kendov.tex" ),
    Asset( "ATLAS", "bigportraits/kendov.xml" ),
	
	Asset( "IMAGE", "images/map_icons/kendov.tex" ),
	Asset( "ATLAS", "images/map_icons/kendov.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_kendov.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_kendov.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_ghost_kendov.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_ghost_kendov.xml" ),
	
	Asset( "IMAGE", "images/avatars/self_inspect_kendov.tex" ),
    Asset( "ATLAS", "images/avatars/self_inspect_kendov.xml" ),
	
	Asset( "IMAGE", "images/names_kendov.tex" ),
    Asset( "ATLAS", "images/names_kendov.xml" ),
	
    Asset( "IMAGE", "bigportraits/kendov_none.tex" ),
    Asset( "ATLAS", "bigportraits/kendov_none.xml" ),
	
	Asset( "IMAGE", "images/inventoryimages/blood.tex" ),
    Asset( "ATLAS", "images/inventoryimages/blood.xml" ),
	
	Asset( "IMAGE", "images/inventoryimages/monsterblood.tex" ),
    Asset( "ATLAS", "images/inventoryimages/monsterblood.xml" ),
	
	Asset( "IMAGE", "images/inventoryimages/humanblood.tex" ),
    Asset( "ATLAS", "images/inventoryimages/humanblood.xml" ),
	
	Asset( "IMAGE", "images/inventoryimages/largeblood.tex" ),
    Asset( "ATLAS", "images/inventoryimages/largeblood.xml" ),
	
	Asset( "IMAGE", "images/inventoryimages/smallblood.tex" ),
    Asset( "ATLAS", "images/inventoryimages/smallblood.xml" ),
	
	Asset( "IMAGE", "images/hud/bloodcrafting.tex" ),
    Asset( "ATLAS", "images/hud/bloodcrafting.xml" ),

	Asset("SOUNDPACKAGE", "sound/proj.fev"),
	Asset("SOUND", "sound/proj.fsb"),
}

RemapSoundEvent( "dontstarve/characters/maxwell/talk_LP", "proj/characters/maxwell/talk_LP" )
RemapSoundEvent( "dontstarve/characters/wilson/talk_LP", "proj/characters/Wilson/talk_LP" )
RemapSoundEvent( "dontstarve/characters/winona/talk_LP", "proj/characters/winona/talk_LP" )
RemapSoundEvent( "dontstarve/characters/wolfgang/talk_LP", "proj/characters/Wolfgang/talk_LP" )
RemapSoundEvent( "dontstarve/characters/wickerbottom/talk_LP", "proj/characters/Wickerbottom/talk_LP" )
RemapSoundEvent( "dontstarve/characters/woodie/talk_LP", "proj/characters/Woodie/talk_LP" )
RemapSoundEvent( "dontstarve/characters/wendy/talk_LP", "proj/characters/Wendy/talk_LP" )

GLOBAL.KendovVision = (GetModConfigData("kendov_darkvision"))
GLOBAL.KendovMoonSanity = (GetModConfigData("kendov_moonsanity"))
GLOBAL.KendovMoonHealing = (GetModConfigData("kendov_moonhealing"))

GLOBAL.FOODTYPE.BLOOD = "BLOOD"

local blood_tab = AddRecipeTab("Blood", 999, "images/hud/bloodcrafting.xml", "bloodcrafting.tex", nil)	
	
AddRecipe("humanblood",{Ingredient(GLOBAL.CHARACTER_INGREDIENT.HEALTH, 20) },blood_tab, TECH.NONE, nil, nil, nil, 1, "bleeder","images/inventoryimages/humanblood.xml", "humanblood.tex")

AddRecipe("blood",{ Ingredient("meat", 1) },blood_tab, TECH.NONE, nil, nil, nil, 1, "dhampir","images/inventoryimages/blood.xml", "blood.tex")
local largeblood0 = AddRecipe("largeblood0",{ Ingredient("trunk_winter", 1) },blood_tab, TECH.NONE, nil, nil, nil, 1, "dhampir","images/inventoryimages/largeblood.xml", "largeblood.tex")
local largeblood1 = AddRecipe("largeblood1",{ Ingredient("trunk_summer", 1) },blood_tab, TECH.NONE, nil, nil, nil, 1, "dhampir","images/inventoryimages/largeblood.xml", "largeblood.tex")
local monsterblood0 = AddRecipe("monsterblood0",{ Ingredient("monstermeat", 1) },blood_tab, TECH.NONE, nil, nil, nil, 1, "dhampir","images/inventoryimages/monsterblood.xml", "monsterblood.tex")
local monsterblood1 = AddRecipe("monsterblood1",{Ingredient(GLOBAL.CHARACTER_INGREDIENT.HEALTH, 20) },blood_tab, TECH.NONE, nil, nil, nil, 1, "monsterbleeder","images/inventoryimages/monsterblood.xml", "monsterblood.tex")
local smallblood0 = AddRecipe("smallblood0",{ Ingredient("smallmeat", 1) },blood_tab, TECH.NONE, nil, nil, nil, 1, "dhampir","images/inventoryimages/smallblood.xml", "smallblood.tex")
local smallblood1 = AddRecipe("smallblood1",{ Ingredient("drumstick", 1) },blood_tab, TECH.NONE, nil, nil, nil, 1, "dhampir","images/inventoryimages/smallblood.xml", "smallblood.tex")
local smallblood2 = AddRecipe("smallblood2",{ Ingredient("froglegs", 1) },blood_tab, TECH.NONE, nil, nil, nil, 1, "dhampir","images/inventoryimages/smallblood.xml", "smallblood.tex")
local smallblood3 = AddRecipe("smallblood3",{ Ingredient("batwing", 1) },blood_tab, TECH.NONE, nil, nil, nil, 1, "dhampir","images/inventoryimages/smallblood.xml", "smallblood.tex")
local smallblood4 = AddRecipe("smallblood4",{ Ingredient("fish", 1) },blood_tab, TECH.NONE, nil, nil, nil, 1, "dhampir","images/inventoryimages/smallblood.xml", "smallblood.tex")
local smallblood5 = AddRecipe("smallblood5",{ Ingredient("eel", 1) },blood_tab, TECH.NONE, nil, nil, nil, 1, "dhampir","images/inventoryimages/smallblood.xml", "smallblood.tex")
local smallblood6 = AddRecipe("smallblood6",{ Ingredient("mosquitosack", 1) },blood_tab, TECH.NONE, nil, nil, nil, 1, "dhampir","images/inventoryimages/smallblood.xml", "smallblood.tex")

monsterblood0.product = "monsterblood"
monsterblood1.product = "monsterblood"
smallblood0.product = "smallblood"
smallblood1.product = "smallblood"
smallblood2.product = "smallblood"
smallblood3.product = "smallblood"
smallblood4.product = "smallblood"
smallblood5.product = "smallblood"
smallblood6.product = "smallblood"
largeblood0.product = "largeblood"
largeblood1.product = "largeblood"

STRINGS.NAMES.MONSTERBLOOD0 = "Flask of Monster Blood"
STRINGS.RECIPE_DESC.MONSTERBLOOD0 = "A toxic flask of blood. Who'd drink this?"

STRINGS.NAMES.MONSTERBLOOD1 = "Flask of Monster Blood"
STRINGS.RECIPE_DESC.MONSTERBLOOD1 = "Lend a wrist to your dhampir buddy."

STRINGS.RECIPE_DESC.BLOOD = "An average flask of rejuvenating blood."

STRINGS.RECIPE_DESC.HUMANBLOOD = "Lend a wrist to your dhampir buddy."

STRINGS.NAMES.SMALLBLOOD0 = "Vial of Blood"
STRINGS.RECIPE_DESC.SMALLBLOOD0 = "A sip of resorative blood."

STRINGS.NAMES.SMALLBLOOD1 = "Vial of Blood"
STRINGS.RECIPE_DESC.SMALLBLOOD1 = "A sip of resorative bird blood."

STRINGS.NAMES.SMALLBLOOD2 = "Vial of Blood"
STRINGS.RECIPE_DESC.SMALLBLOOD2 = "A sip of resorative frog blood."

STRINGS.NAMES.SMALLBLOOD3 = "Vial of Blood"
STRINGS.RECIPE_DESC.SMALLBLOOD3 = "A sip of resorative bat blood."

STRINGS.NAMES.SMALLBLOOD4 = "Vial of Blood"
STRINGS.RECIPE_DESC.SMALLBLOOD4 = "A sip of resorative fish blood."

STRINGS.NAMES.SMALLBLOOD5 = "Vial of Blood"
STRINGS.RECIPE_DESC.SMALLBLOOD5 = "A sip of resorative eel blood."

STRINGS.NAMES.SMALLBLOOD6 = "Vial of Blood"
STRINGS.RECIPE_DESC.SMALLBLOOD6 = "A sip of mixed, resorative bloods."

STRINGS.NAMES.LARGEBLOOD0 = "Jar of Blood"
STRINGS.RECIPE_DESC.LARGEBLOOD0 = "A heaping jar of invigorating blood."

STRINGS.NAMES.LARGEBLOOD1 = "Jar of Blood"
STRINGS.RECIPE_DESC.LARGEBLOOD1 = "A heaping jar of invigorating blood."

STRINGS.CHARACTERS.WATHGRITHR.DESCRIBE.KENDOV =
        {
            GENERIC = "Such strength in those tiny arms, %s!",
            ATTACKER = "If %s is looking for trouble, I shall give it to them!",
            MURDERER = "Murderer! To battle!",
            REVIVER = "Freya smiles on %s.",
            GHOST = "%s's restless spirit could be revived with a heart.",
            FIRESTARTER = "Forged in flame!",
        }
STRINGS.CHARACTERS.WEBBER.DESCRIBE.KENDOV =
        {
            GENERIC = "Hey! Are you a monster too, %s?",
            ATTACKER = "%s looks mean.",
            MURDERER = "Meanie! Get'em!",
            REVIVER = "%s is super nice to ghosts.",
            GHOST = "Don't worry, %s, we'll find you a heart!",
            FIRESTARTER = "Monsterfriend %s, you lit a fire!",
        }
STRINGS.CHARACTERS.WENDY.DESCRIBE.KENDOV =
        {
            GENERIC = "You're touched by death, aren't you %s?",
            ATTACKER = "%s, what's wrong?",
            MURDERER = "%s, you smell of death!",
            REVIVER = "You could never be a monster, %s.",
            GHOST = "A heart could return %s to this world...",
            FIRESTARTER = "Do you wish to see the world burn, too?",
        }
STRINGS.CHARACTERS.WOLFGANG.DESCRIBE.KENDOV =
        {
            GENERIC = "Is tiny monsterman %s! H-hello!",
            ATTACKER = "Does %s want to fight?",
            MURDERER = "Monsterman %s is killer! Wolfgang is run!",
            REVIVER = "Creepy monster %s is nice man.",
            GHOST = "Wolfgang will get raw pump-y heart for you!",
            FIRESTARTER = "%s is lighting burny fires!",
        }
STRINGS.CHARACTERS.WOODIE.DESCRIBE.KENDOV = 
		{
			GENERIC = "%s! Fancy seeing another Canadian here.",
			ATTACKER = "%s isn't a true Canadian...",
			MURDERER = "Enemy of the forest!",
			REVIVER = "%s is a Canadian patriot, eh.",
			GHOST = "Canadians gotta stick together, %s. Let's get a heart.",
			FIRESTARTER = "Knock off the fire starting there, bud.",
		}

AddComponentPostInit("edible", function(Edible, inst)
	local oldGetHealth = Edible.GetHealth
	function Edible:GetHealth(eater)
		local multiplier = 1
		if eater ~= nil then
			if eater:HasTag("dhampir") then
				if self.foodtype ~= "BLOOD" or self.inst:HasTag("monstermeat") then
					multiplier = 0.5
				end
			end
		return multiplier * oldGetHealth(self, eater)
		end
	end
	local oldGetSanity = Edible.GetSanity
	function Edible:GetSanity(eater)
		local multiplier = 1
		if eater ~= nil then
			if eater:HasTag("dhampir") then
				if self.inst:HasTag("monstermeat") then
					multiplier = 0.5
				end
			end
		return multiplier * oldGetSanity(self, eater)
		end
	end
end)

STRINGS.CHARACTER_TITLES.kendov = "The Night Owl"
STRINGS.CHARACTER_NAMES.kendov = "Wendov"
STRINGS.CHARACTER_DESCRIPTIONS.kendov = "*Favours being in the dark\n*Can't heal by traditional methods\n*Well researched hematologist"
STRINGS.CHARACTER_QUOTES.kendov = "\"Someone turn off the sun...\""

STRINGS.CHARACTERS.KENDOV = require "speech_kendov"

STRINGS.NAMES.KENDOV = "Wendov"

AddMinimapAtlas("images/map_icons/kendov.xml")

AddModCharacter("kendov", "MALE")


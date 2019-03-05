local MakePlayerCharacter = require "prefabs/player_common"

local assets =
{
    Asset("SCRIPT", "scripts/prefabs/player_common.lua"),
	Asset("ANIM", "anim/beard.zip"),
}

local prefabs ={
	"spear_wathgrithr",
    "wathgrithrhat",
	"beardhair",
	"grassspike_armor",
	"thermalstone_armor",
}

local start_inv ={
	"blacksmithhammer",
}

local BEARD_DAYS = { 4, 8, 16 }
local BEARD_BITS = { 1, 3,  9 }

local function OnResetBeard(inst)
    inst.AnimState:ClearOverrideSymbol("beard")
end

local function OnGrowShortBeard(inst)
    inst.AnimState:OverrideSymbol("beard", "beard", "beard_short")
    inst.components.beard.bits = BEARD_BITS[1]
end

local function OnGrowMediumBeard(inst)
    inst.AnimState:OverrideSymbol("beard", "beard", "beard_medium")
    inst.components.beard.bits = BEARD_BITS[2]
end

local function OnGrowLongBeard(inst)
    inst.AnimState:OverrideSymbol("beard", "beard", "beard_long")
    inst.components.beard.bits = BEARD_BITS[3]
end

local function sanityfn(inst)
    local x, y, z = inst.Transform:GetWorldPosition() 
    local delta = 0
	local eelta = 0
    local max_rad = 10
    local ents = TheSim:FindEntities(x, y, z, max_rad, { "fire" })
    for i, v in ipairs(ents) do
        if v.components.burnable ~= nil and v.components.burnable:IsBurning() then
            local rad = v.components.burnable:GetLargestLightRadius() or 1
            local sz = TUNING.SANITYAURA_MED * math.min(max_rad, rad) / max_rad
            local distsq = inst:GetDistanceSqToInst(v) - 9
            delta = delta + sz / math.max(1, distsq)
        end
    end
	
	if TheWorld.state.temperature <= 0 then
        eelta = TUNING.SANITYAURA_SMALL
	end

	if delta == 0 then
		return -eelta
	else
		return delta
	end
end

local function DoHungerCheck(inst)
	if inst.components.hunger.current/inst.components.hunger.max <= 0.075 then
		inst.components.eater:SetDiet({ FOODGROUP.OMNI }, { FOODGROUP.OMNI })
	else
		inst.components.eater:SetDiet({ FOODGROUP.OMNI }, { FOODTYPE.MEAT })
	end
end

local function healthdamagecheck(inst)
	if inst.components.health.currenthealth > 100 then
		inst.components.combat.damagemultiplier = 1.85 - ((((inst.components.health.currenthealth)-100)/((inst.components.health.maxhealth-100)))*0.6)
	else
		inst.components.combat.damagemultiplier = 1.85
	end
end

local common_postinit = function(inst)
	inst.MiniMapEntity:SetIcon( "james.tex" )
	inst:AddTag("bearded")
	inst:AddTag("valkyrie")
	inst:AddTag("jamesblacksmith")
end

local function onbecamehuman(inst)
	inst.components.locomotor:SetExternalSpeedMultiplier(inst, "james_speed_mod", 1)
end

local function onbecameghost(inst)
   inst.components.locomotor:RemoveExternalSpeedMultiplier(inst, "james_speed_mod")
end

local function onload(inst)
    inst:ListenForEvent("ms_respawnedfromghost", onbecamehuman)
    inst:ListenForEvent("ms_becameghost", onbecameghost)

    if inst:HasTag("playerghost") then
        onbecameghost(inst)
    else
        onbecamehuman(inst)
    end
end

local function OnNewSpawn(inst)
	local krampussack = SpawnPrefab("krampus_sack")    
	inst.components.inventory:Equip(krampussack)
end

local function ondeath(inst)
	for k,v in pairs(AllPlayers) do
		v.components.talker:Say("F")
	end
end

local master_postinit = function(inst)
	inst.soundsname = "woodie"
	
	inst.components.builder:UnlockRecipe("shovel")
	inst.components.builder:UnlockRecipe("pitchfork")
	inst.components.builder:UnlockRecipe("razor")
	inst.components.builder:UnlockRecipe("spear")
	inst.components.builder:UnlockRecipe("armorwood")
	inst.components.builder:UnlockRecipe("rope")
	inst.components.builder:UnlockRecipe("boards")
	inst.components.builder:UnlockRecipe("cutstone")
	inst.components.builder:UnlockRecipe("sculptingtable")
	
	inst.components.health:SetMaxHealth(300)
	inst.components.hunger:SetMax(200)
	inst.components.sanity:SetMax(175)
	
	inst.components.health.fire_damage_scale = 0
	
	inst.components.hunger.hungerrate = 1.2 * TUNING.WILSON_HUNGER_RATE
	
	inst.components.eater.strongstomach = true
	
	inst.components.sanity.custom_rate_fn = sanityfn
	
	inst.components.temperature.inherentinsulation = -120
	inst.components.temperature.inherentsummerinsulation = 120
	
	inst:AddComponent("freezable")
	inst.components.freezable:SetResistance(2)
	
	inst.components.locomotor.walkspeed = 2.5
	inst.components.locomotor.runspeed = 4.5
	
	inst:AddComponent("beard")
    inst.components.beard.onreset = OnResetBeard
    inst.components.beard.prize = "beardhair"
    inst.components.beard:AddCallback(BEARD_DAYS[1], OnGrowShortBeard)
    inst.components.beard:AddCallback(BEARD_DAYS[2], OnGrowMediumBeard)
    inst.components.beard:AddCallback(BEARD_DAYS[3], OnGrowLongBeard)
	
	inst:DoPeriodicTask(1,healthdamagecheck)
	inst:DoPeriodicTask(1,DoHungerCheck)
	
	inst:ListenForEvent("death",ondeath)
	
	inst.OnLoad = onload
    inst.OnNewSpawn = OnNewSpawn
end

return MakePlayerCharacter("james", prefabs, assets, common_postinit, master_postinit, start_inv)

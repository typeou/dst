local MakePlayerCharacter = require "prefabs/player_common"

local assets = {
    Asset("SCRIPT", "scripts/prefabs/player_common.lua"),
		
		Asset( "ANIM", "anim/loney.zip" ),
			Asset( "ANIM", "anim/loney_000.zip" ),
			Asset( "ANIM", "anim/loney_001.zip" ),
			Asset( "ANIM", "anim/loney_002.zip" ),
}

local prefabs = {}

local start_inv = {
}

local BEARD_DAYS = { 4, 8, 16 }
local BEARD_BITS = { 0, 1,  2 }

local function OnResetBeard(inst)
	if not inst:HasTag("playerghost") and inst.components.health.invincible == false then
		inst.AnimState:SetBuild("loney")
	end
	inst.components.sanity:DoDelta(-30)
end

local function OnGrowShortBeard(inst)
    inst.AnimState:SetBuild("loney_001")
    inst.components.beard.bits = BEARD_BITS[1]
end

local function OnGrowMediumBeard(inst)
    inst.AnimState:SetBuild("loney_000")
    inst.components.beard.bits = BEARD_BITS[2]
end

local function OnGrowLongBeard(inst)
    inst.AnimState:SetBuild("loney_002")
    inst.components.beard.bits = BEARD_BITS[3]
end

local common_postinit = function(inst) 
	inst.MiniMapEntity:SetIcon( "loney.tex" )
	inst:AddTag("bearded")
end

local function onbecamehuman(inst)
	inst.components.locomotor:SetExternalSpeedMultiplier(inst, "loney_speed_mod", 1)
end

local function onbecameghost(inst)
   inst.components.locomotor:RemoveExternalSpeedMultiplier(inst, "loney_speed_mod")
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
	inst.AnimState:SetBuild("loney_002")
    inst.components.beard.bits = BEARD_BITS[3]
end

local function ondeath(inst)
	for k,v in pairs(AllPlayers) do
		v.components.talker:Say("F")
	end
end

local master_postinit = function(inst)
	inst.soundsname = "wickerbottom"
	
	inst.components.health:SetMaxHealth(100)
	inst.components.hunger:SetMax(150)
	inst.components.sanity:SetMax(250)
	
	inst.components.locomotor.walkspeed = 6
	inst.components.locomotor.runspeed = 8
	
    inst.components.combat.damagemultiplier = 0.8
	
	inst.components.hunger.hungerrate = 1 * TUNING.WILSON_HUNGER_RATE
	
	inst:AddComponent("beard")
    inst.components.beard.insulation_factor = 8
    inst.components.beard.onreset = OnResetBeard
    inst.components.beard.prize = "manrabbit_tail"
    inst.components.beard:AddCallback(BEARD_DAYS[1], OnGrowShortBeard)
    inst.components.beard:AddCallback(BEARD_DAYS[2], OnGrowMediumBeard)
    inst.components.beard:AddCallback(BEARD_DAYS[3], OnGrowLongBeard)
	
	inst:ListenForEvent("death",ondeath)
	
	inst.OnLoad = onload
	inst.OnNewSpawn = OnNewSpawn
end

return MakePlayerCharacter("loney", prefabs, assets, common_postinit, master_postinit, start_inv)

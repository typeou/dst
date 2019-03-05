local MakePlayerCharacter = require "prefabs/player_common"

local text = false
local dead = false

local assets = {
    Asset("SCRIPT", "scripts/prefabs/player_common.lua"),
}

local prefabs = {
}

local start_inv = {
	"bandage",
	"bandage",
	"bandage",
}

local function glomaura(inst)
	local x,y,z = inst.Transform:GetWorldPosition()
	local player = TheSim:FindEntities(x, y, z, 15, {"player"}, {"playerghost"})
	local count = #player - 1
	if dead == false then
		if count >= 1 then
			text = false
			inst.components.sanityaura.aura = TUNING.SANITYAURA_SMALL
			inst.components.sanity.dapperness = 0.1
			inst.components.locomotor.walkspeed = 4
			inst.components.locomotor.runspeed = 6
		else
			if text == false then
				if dead == false then
					inst.components.talker:Say("Don't leave me alone!")
				end
				text = true
			end
			inst.components.sanityaura.aura = 0.0
			inst.components.sanity.dapperness = -0.2
			inst.components.locomotor.walkspeed = 5
			inst.components.locomotor.runspeed = 7
		end
	end
end

local common_postinit = function(inst) 
	inst.MiniMapEntity:SetIcon( "redd.tex" )
	inst:AddComponent("sanityaura")
	inst:AddTag("healer")
end

local function onbecamehuman(inst)
	inst.components.locomotor:SetExternalSpeedMultiplier(inst, "redd_speed_mod", 1)
end

local function onbecameghost(inst)
   inst.components.locomotor:RemoveExternalSpeedMultiplier(inst, "redd_speed_mod")
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

local master_postinit = function(inst)
	inst.soundsname = "wilson"
	
	inst.components.health:SetMaxHealth(100)
	inst.components.hunger:SetMax(200)
	inst.components.sanity:SetMax(200)
	
	inst.components.eater.stale_hunger = TUNING.WICKERBOTTOM_STALE_FOOD_HUNGER
    inst.components.eater.stale_health = TUNING.WICKERBOTTOM_STALE_FOOD_HEALTH
    inst.components.eater.spoiled_hunger = TUNING.WICKERBOTTOM_SPOILED_FOOD_HUNGER
    inst.components.eater.spoiled_health = TUNING.WICKERBOTTOM_SPOILED_FOOD_HEALTH
	
    inst.components.combat.damagemultiplier = 0.5
	
	inst.components.hunger.hungerrate = 1 * TUNING.WILSON_HUNGER_RATE
	
	inst:DoPeriodicTask(1,glomaura)
	
	inst.OnLoad = onload
    inst.OnNewSpawn = onload
end

return MakePlayerCharacter("redd", prefabs, assets, common_postinit, master_postinit, start_inv)

local MakePlayerCharacter = require "prefabs/player_common"

local text = false
local dead = false

local assets = {
    Asset("SCRIPT", "scripts/prefabs/player_common.lua"),
}
local prefabs = {}

local start_inv = {
}

local function sanityhungercheck(inst)
	inst.components.hunger.hungerrate = (2-(inst.components.sanity.current/inst.components.sanity.max)) * TUNING.WILSON_HUNGER_RATE
end

local function glomaura(inst)
	local x,y,z = inst.Transform:GetWorldPosition()
	local player = TheSim:FindEntities(x,y,z, 15, {"player"}, {"playerghost"})
	local count = #player - 1
	if count >= 1 and dead == false then
		text = false
		inst.components.sanityaura.aura = TUNING.SANITYAURA_SMALL
		inst.components.sanity.dapperness = 0.1
		inst.components.locomotor.walkspeed = 4
		inst.components.locomotor.runspeed = 6
	else
		if text == false then
			if dead == false then
				inst.components.talker:Say("Seems like the usual happened again...")
			end
			text = true
		end
		inst.components.sanityaura.aura = 0.0
		inst.components.sanity.dapperness = -0.2
		inst.components.locomotor.walkspeed = 5
		inst.components.locomotor.runspeed = 7
	end
end

local common_postinit = function(inst) 
	inst.MiniMapEntity:SetIcon( "lloyd.tex" )
	inst:AddComponent("sanityaura")
end

local function onbecamehuman(inst)
	inst.components.locomotor:SetExternalSpeedMultiplier(inst, "lloyd_speed_mod", 1)
	dead = false
end

local function onbecameghost(inst)
	inst.components.locomotor:RemoveExternalSpeedMultiplier(inst, "lloyd_speed_mod")
	dead = true
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
	local tophat = SpawnPrefab("tophat")    
	inst.components.inventory:Equip(tophat)
end

local function ondeath(inst)
	for k,v in pairs(AllPlayers) do
		v.components.talker:Say("F")
	end
end

local master_postinit = function(inst)
	inst.soundsname = "maxwell"
	
	inst.components.health:SetMaxHealth(150)
	inst.components.hunger:SetMax(150)
	inst.components.sanity:SetMax(300)
	
    inst.components.combat.damagemultiplier = 1
	
	inst.components.builder.magic_bonus = 1
	
	inst:DoPeriodicTask(1,glomaura)
	inst:DoPeriodicTask(1,sanityhungercheck)
	
	inst:ListenForEvent("death",ondeath)
	
	inst.OnLoad = onload
    inst.OnNewSpawn = OnNewSpawn
end

return MakePlayerCharacter("lloyd", prefabs, assets, common_postinit, master_postinit, start_inv)

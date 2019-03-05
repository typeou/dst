local MakePlayerCharacter = require "prefabs/player_common"

local assets = {
    Asset("SCRIPT", "scripts/prefabs/player_common.lua"),
}
local prefabs = {}

local start_inv = {
	"bernie_inactive",
	"sewing_kit",
	"sewing_kit",
	"sewing_kit",
}

local function sanitydamagecheck(inst)
	inst.components.combat.damagemultiplier = 2-(inst.components.sanity.current/inst.components.sanity.max)
end

local function onbecamehuman(inst)
	inst.components.locomotor:SetExternalSpeedMultiplier(inst, "hannah_speed_mod", 1)
end

local function onbecameghost(inst)
   inst.components.locomotor:RemoveExternalSpeedMultiplier(inst, "hannah_speed_mod")
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

local text = 0

local common_postinit = function(inst) 
	inst.MiniMapEntity:SetIcon( "hannah.tex" )
end

local master_postinit = function(inst)
	inst.soundsname = "wilson"
	
	inst.components.health:SetMaxHealth(100)
	inst.components.hunger:SetMax(150)
	inst.components.sanity:SetMax(300)
	
	inst.components.locomotor.walkspeed = 5
	inst.components.locomotor.runspeed = 7
	
	inst:DoPeriodicTask(1,sanitydamagecheck)
	
	inst.components.hunger.hungerrate = 1.25 * TUNING.WILSON_HUNGER_RATE
	inst.components.sanity.night_drain_mult = 1.25
    inst.components.sanity.neg_aura_mult = 1.25
	
	inst.OnLoad = onload
    inst.OnNewSpawn = onload
end

return MakePlayerCharacter("hannah", prefabs, assets, common_postinit, master_postinit, start_inv)

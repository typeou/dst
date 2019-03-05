local MakePlayerCharacter = require "prefabs/player_common"

local foodEaten = 0
local count = 0

local assets = {
    Asset("SCRIPT", "scripts/prefabs/player_common.lua"),
}

local prefabs = {}

local start_inv = {
}

local function GetNumGhostPlayers()
    local num = 0
    if GetGhostSanityDrain( TheNet:GetServerGameMode() ) then
       for i,v in pairs(AllPlayers) do
            if v:HasTag("playerghost") then
                num = num + 1
            end
        end
    end
    return num
end

local function sanityfn(inst)
	local delta = 0
	local eelta = 0
	local aelta = 0
	
	local x,y,z = inst.Transform:GetWorldPosition()
    local ents = TheSim:FindEntities(x,y,z, 20, {"grave"})
    for k,v in pairs(ents) do
		local bonus_sanity = TUNING.SANITYAURA_TINY
		local distsq = math.max(inst:GetDistanceSqToInst(v),1)
		delta = delta + bonus_sanity/distsq
    end
	
	local a,b,c = inst.Transform:GetWorldPosition()
    local fnts = TheSim:FindEntities(a,b,c, 20, {"ghost"})
    for d,e in pairs(fnts) do
		local bonus_sanity = TUNING.SANITYAURA_MED
		local distsq = math.max(inst:GetDistanceSqToInst(e),1)
		eelta = eelta + bonus_sanity/distsq
    end
     
    local ghost_drain_mult = GetNumGhostPlayers()
     
    if ghost_drain_mult > TUNING.MAX_SANITY_GHOST_PLAYER_DRAIN_MULT then
        ghost_drain_mult = TUNING.MAX_SANITY_GHOST_PLAYER_DRAIN_MULT
    end
     
    aelta = aelta + TUNING.SANITY_GHOST_PLAYER_DRAIN * ghost_drain_mult * -1
     
    local aura_aelta = 0
    local f,g,i = inst.Transform:GetWorldPosition()
    local ents = TheSim:FindEntities(f,g,i, TUNING.SANITY_EFFECT_RANGE, {"ghost"}) -- Do ghost players have the tag ghost too?
    for j,l in pairs(ents) do
        if l.components.sanityaura and l ~= inst then
            local distsq = inst:GetDistanceSqToInst(l)
            local aura_val = l.components.sanityaura:GetAura(inst)/math.max(1, distsq)
            if aura_val < 0 then
                aura_val = aura_val * inst.components.sanity.neg_aura_mult
            end
 
            aura_aelta = aura_aelta + aura_val
        end
    end
     
    aelta = aelta + (aura_aelta * -1)
     
	if delta > eelta and delta > aelta then
		return delta
	elseif aelta > eelta then
		return aelta
	else
		return eelta
	end
end

local function resetFoodEaten(inst)
	foodEaten = 0
end

local function addFoodEaten(inst)
	foodEaten = foodEaten + 1
end

local function foodcheck(inst)
	if foodEaten == 0 then
			inst.components.eater.hungerabsorption = 1
		elseif foodEaten == 1 then
			inst.components.eater.hungerabsorption = 0.9
		elseif foodEaten == 2 then
			inst.components.eater.hungerabsorption = 0.8
		elseif foodEaten == 3 then
			inst.components.eater.hungerabsorption = 0.7
		elseif foodEaten == 4 then
			inst.components.eater.hungerabsorption = 0.6
		else
			inst.components.eater.hungerabsorption = 0.5
	end
end

local function sanityhungercheck(inst)
	inst.components.hunger.hungerrate = (0.5+(inst.components.sanity.current/inst.components.sanity.max)*0.75) * TUNING.WILSON_HUNGER_RATE
end

local function attacktimer(inst)
	inst:AddTag("scarytoprey")
	count = count + 1
	if count >= 30 then
		inst.task:Cancel()
		inst.task = nil
		inst:RemoveTag("scarytoprey")
	end
end

local function onattack(inst)
	if inst.task ~= nil then
		inst.task:Cancel()
		inst.task = nil
	end
	count = 0
	inst.task = inst:DoPeriodicTask(1,attacktimer)
end

local common_postinit = function(inst) 
	inst.MiniMapEntity:SetIcon( "celeste.tex" )
	inst:RemoveTag("scarytoprey")
end

local function onbecamehuman(inst)
	inst.components.locomotor:SetExternalSpeedMultiplier(inst, "celeste_speed_mod", 1)
	foodEaten = 0
end

local function onbecameghost(inst)
   inst.components.locomotor:RemoveExternalSpeedMultiplier(inst, "celeste_speed_mod")
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

local function ondeath(inst)
	for k,v in pairs(AllPlayers) do
		v.components.talker:Say("F")
	end
end

local master_postinit = function(inst)
	inst.soundsname = "wilson"
	
	inst.components.builder:UnlockRecipe("slow_farmplot")
	inst.components.builder:UnlockRecipe("mushroom_farm")
	inst.components.builder:UnlockRecipe("beebox")
	inst.components.builder:UnlockRecipe("meatrack")
	inst.components.builder:UnlockRecipe("cookpot")
	inst.components.builder:UnlockRecipe("rope")
	inst.components.builder:UnlockRecipe("boards")
	inst.components.builder:UnlockRecipe("cutstone")
	
	inst.components.health:SetMaxHealth(150)
	inst.components.hunger:SetMax(150)
	inst.components.sanity:SetMax(150)
	
	inst.components.sanity.night_drain_mult = 1.25
    inst.components.sanity.neg_aura_mult = 1.25
	inst.components.sanity.custom_rate_fn = sanityfn
	
	inst.components.locomotor.walkspeed = 5
	inst.components.locomotor.runspeed = 7
	
	inst.components.temperature.inherentinsulation = 60
	
    inst.components.combat.damagemultiplier = 1
	
	inst:WatchWorldState("startday",resetFoodEaten)
	inst:ListenForEvent("oneat",addFoodEaten)
	inst:ListenForEvent("onattackother",onattack)
	inst:DoPeriodicTask(1,foodcheck)
	inst:DoPeriodicTask(1,sanityhungercheck)
	
	inst:ListenForEvent("death",ondeath)
	
	inst.OnLoad = onload
    inst.OnNewSpawn = onload
end

return MakePlayerCharacter("celeste", prefabs, assets, common_postinit, master_postinit, start_inv)

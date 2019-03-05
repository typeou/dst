require("kentuning")

local MakePlayerCharacter = require "prefabs/player_common"

local buffed = false
local darkvisioncaveinit = false
local count = 0
local phasehealmult = 1
local sanityhealmult = 1

local assets = {
    Asset("SCRIPT", "scripts/prefabs/player_common.lua"),
	Asset( "ANIM", "anim/ghost_kendov_build.zip" ),
	Asset( "ANIM", "anim/kendov.zip" ),
	Asset( "ANIM", "anim/kendov_darkvision.zip" ),
}

local prefabs = {}

local start_inv = {
}

local DARKVISION_COLOURCUBES =
{
}

local function seasoncheck(inst)
	if TheWorld.state.isautumn then
		DARKVISION_COLOURCUBES =
		{
			day = "images/colour_cubes/day05_cc.tex",
			dusk = "images/colour_cubes/dusk03_cc.tex",
			night = "images/colour_cubes/purple_moon_cc.tex",
			full_moon = "images/colour_cubes/purple_moon_cc.tex"
		}
	elseif TheWorld.state.iswinter then
		DARKVISION_COLOURCUBES =
		{
			day = "images/colour_cubes/snow_cc.tex",
			dusk = "images/colour_cubes/snowdusk_cc.tex",
			night = "images/colour_cubes/purple_moon_cc.tex",
			full_moon = "images/colour_cubes/purple_moon_cc.tex"
		}
	elseif TheWorld.state.isspring then
		DARKVISION_COLOURCUBES =
		{
			day = "images/colour_cubes/spring_day_cc.tex",
			dusk = "images/colour_cubes/spring_dusk_cc.tex",
			night = "images/colour_cubes/purple_moon_cc.tex",
			full_moon = "images/colour_cubes/purple_moon_cc.tex"
		}
	elseif TheWorld.state.issummer then
		DARKVISION_COLOURCUBES =
		{
			day = "images/colour_cubes/summer_day_cc.tex",
			dusk = "images/colour_cubes/summer_dusk_cc.tex",
			night = "images/colour_cubes/purple_moon_cc.tex",
			full_moon = "images/colour_cubes/purple_moon_cc.tex"
		}
	end
end

local function applydarkvision(inst)
	if inst.components.playervision then
		if inst.darkvision:value() then
			seasoncheck(inst)
			inst.components.playervision:SetCustomCCTable(DARKVISION_COLOURCUBES)
			inst.components.playervision:ForceNightVision(true)
		else
			seasoncheck(inst)
			inst.components.playervision:SetCustomCCTable(DARKVISION_COLOURCUBES)
			inst.components.playervision:ForceNightVision(false)
		end
	end
end

local function registerdarkvisionlistener(inst)
	inst:ListenForEvent("darkvisiondirty", applydarkvision)
end

local function initializedarkvision(inst)
	inst.darkvision = net_bool(inst.GUID, "player.darkvision", "darkvisiondirty")
	inst.darkvision:set(false)
	inst:DoTaskInTime(0, registerdarkvisionlistener)
end

local function healthcheck(inst)
	if buffed then
		if (inst.components.health.currenthealth/(inst.components.health.maxhealth*(1-inst.components.health.penalty))) > 0.99 then
			if TheWorld:HasTag("cave") then
				inst.components.combat.damagemultiplier = KENTUNING.KENDOV_DAMAGE_CAVE_MULT + KENTUNING.KENDOV_DAMAGE_MAXHEALTH_DAMAGE + KENTUNING.KENDOV_DAMAGE_BLOODBUFF_DAMAGE
			elseif TheWorld.state.phase == "day" then
				inst.components.combat.damagemultiplier = KENTUNING.KENDOV_DAMAGE_DAY_MULT + KENTUNING.KENDOV_DAMAGE_MAXHEALTH_DAMAGE + KENTUNING.KENDOV_DAMAGE_BLOODBUFF_DAMAGE
			elseif TheWorld.state.phase == "dusk" then
				inst.components.combat.damagemultiplier = KENTUNING.KENDOV_DAMAGE_DUSK_MULT + KENTUNING.KENDOV_DAMAGE_MAXHEALTH_DAMAGE + KENTUNING.KENDOV_DAMAGE_BLOODBUFF_DAMAGE
			elseif TheWorld.state.phase == "night" then
				inst.components.combat.damagemultiplier = KENTUNING.KENDOV_DAMAGE_NIGHT_MULT + KENTUNING.KENDOV_DAMAGE_MAXHEALTH_DAMAGE + KENTUNING.KENDOV_DAMAGE_BLOODBUFF_DAMAGE
			end
		else
			if TheWorld:HasTag("cave") then
				inst.components.combat.damagemultiplier = KENTUNING.KENDOV_DAMAGE_CAVE_MULT + KENTUNING.KENDOV_DAMAGE_BLOODBUFF_DAMAGE
			elseif TheWorld.state.phase == "day" then
				inst.components.combat.damagemultiplier = KENTUNING.KENDOV_DAMAGE_DAY_MULT + KENTUNING.KENDOV_DAMAGE_BLOODBUFF_DAMAGE
			elseif TheWorld.state.phase == "dusk" then
				inst.components.combat.damagemultiplier = KENTUNING.KENDOV_DAMAGE_DUSK_MULT + KENTUNING.KENDOV_DAMAGE_BLOODBUFF_DAMAGE
			elseif TheWorld.state.phase == "night" then
				inst.components.combat.damagemultiplier = KENTUNING.KENDOV_DAMAGE_NIGHT_MULT + KENTUNING.KENDOV_DAMAGE_BLOODBUFF_DAMAGE
			end
		end
	else
		if (inst.components.health.currenthealth/(inst.components.health.maxhealth*(1-inst.components.health.penalty))) > 0.99 then
			if TheWorld:HasTag("cave") then
				inst.components.combat.damagemultiplier = KENTUNING.KENDOV_DAMAGE_CAVE_MULT + KENTUNING.KENDOV_DAMAGE_MAXHEALTH_DAMAGE
			elseif TheWorld.state.phase == "day" then
				inst.components.combat.damagemultiplier = KENTUNING.KENDOV_DAMAGE_DAY_MULT + KENTUNING.KENDOV_DAMAGE_MAXHEALTH_DAMAGE
			elseif TheWorld.state.phase == "dusk" then
				inst.components.combat.damagemultiplier = KENTUNING.KENDOV_DAMAGE_DUSK_MULT + KENTUNING.KENDOV_DAMAGE_MAXHEALTH_DAMAGE
			elseif TheWorld.state.phase == "night" then
				inst.components.combat.damagemultiplier = KENTUNING.KENDOV_DAMAGE_NIGHT_MULT + KENTUNING.KENDOV_DAMAGE_MAXHEALTH_DAMAGE
			end
		else
			if TheWorld:HasTag("cave") then
				inst.components.combat.damagemultiplier = KENTUNING.KENDOV_DAMAGE_CAVE_MULT
			elseif TheWorld.state.phase == "day" then
				inst.components.combat.damagemultiplier = KENTUNING.KENDOV_DAMAGE_DAY_MULT
			elseif TheWorld.state.phase == "dusk" then
				inst.components.combat.damagemultiplier = KENTUNING.KENDOV_DAMAGE_DUSK_MULT
			elseif TheWorld.state.phase == "night" then
				inst.components.combat.damagemultiplier = KENTUNING.KENDOV_DAMAGE_NIGHT_MULT
			end
		end
	end
end

local function sanitycheck(inst)
	sanityhealmult = KENTUNING.KENDOV_LIFESTEAL_SANITY_MAXMULT-((inst.components.sanity.current/inst.components.sanity.max)*(KENTUNING.KENDOV_LIFESTEAL_SANITY_MAXMULT-1))
	
	inst.components.hunger.hungerrate = (KENTUNING.KENDOV_HUNGER_MAXMULT-((inst.components.sanity.current/inst.components.sanity.max)*(KENTUNING.KENDOV_HUNGER_MAXMULT-KENTUNING.KENDOV_HUNGER_BASEMULT))) * TUNING.WILSON_HUNGER_RATE
	
	inst.darkvision:set(false)
	if KendovVision then
		if TheWorld:HasTag("cave") then
			seasoncheck(inst)
			if darkvisioncaveinit == false then
				initializedarkvision(inst)
				darkvisioncaveinit = true
			end
			inst.darkvision:set(true)
		elseif TheWorld.state.phase == "day" then
			inst.darkvision:set(false)
		elseif TheWorld.state.phase == "dusk" then
			inst.darkvision:set(false)
		elseif TheWorld.state.phase == "night" then
			seasoncheck(inst)
			inst.components.playervision:SetCustomCCTable(DARKVISION_COLOURCUBES)
			inst.components.playervision:ForceNightVision(true)
			inst.darkvision:set(true)
		end
		inst.components.builder.science_bonus = 1
	else
		if inst.components.sanity.current/inst.components.sanity.max <= KENTUNING.KENDOV_DARKVISION_SANITY_THRESHOLD then
			if not inst:HasTag("playerghost") and inst.components.health.invincible == false then
				inst.AnimState:SetBuild("kendov_darkvision")
			end
			if TheWorld:HasTag("cave") then
				seasoncheck(inst)
				if darkvisioncaveinit == false then
					initializedarkvision(inst)
					darkvisioncaveinit = true
				end
				inst.darkvision:set(true)
			elseif TheWorld.state.phase == "day" then
				seasoncheck(inst)
				inst.darkvision:set(false)
			elseif TheWorld.state.phase == "dusk" then
				seasoncheck(inst)
				inst.darkvision:set(false)
			elseif TheWorld.state.phase == "night" then
				seasoncheck(inst)
				inst.components.playervision:SetCustomCCTable(DARKVISION_COLOURCUBES)
				inst.components.playervision:ForceNightVision(true)
				inst.darkvision:set(true)
			end
			inst.components.builder.science_bonus = 0
		else
			if not inst:HasTag("playerghost") and inst.components.health.invincible == false then
				inst.AnimState:SetBuild("kendov")
				inst.components.builder.science_bonus = 1
			end
			inst.darkvision:set(false)
		end
	end
end

local function mooncheck(inst)
	if KendovMoonSanity and TheWorld.state.phase == "night" and not TheWorld:HasTag("cave") and not inst:HasTag("playerghost") then
		if inst.components.health.invincible == false then
			inst.components.talker:Say("Oh no...")
		end
		inst.components.sanity.dapperness = -TUNING.SANITYAURA_HUGE
	end
	if KendovMoonHealing and TheWorld.state.phase == "night" and not TheWorld:HasTag("cave") and not inst:HasTag("playerghost") then
		phasehealmult = KENTUNING.KENDOV_LIFESTEAL_FULLMOON_MULT
	end
end

local function shadecheck(inst)
	if TheWorld.state.phase == "day" and not TheWorld:HasTag("cave") then
		local itemhead = inst.components.inventory:GetEquippedItem(EQUIPSLOTS.HEAD)
		local itemhand = inst.components.inventory:GetEquippedItem(EQUIPSLOTS.HANDS)
		if itemhead ~= nil and itemhand == nil then
			if itemhead.name == "Straw Hat" or itemhead.name == "Eyebrella" then
				inst.components.locomotor:SetExternalSpeedMultiplier(inst, "kendov_speed_mod", KENTUNING.KENDOV_SPEED_DAY_SHADE_MULT)
			else
				inst.components.locomotor:SetExternalSpeedMultiplier(inst, "kendov_speed_mod", KENTUNING.KENDOV_SPEED_DAY_MULT)
			end
		elseif itemhand ~= nil and itemhead == nil then
			if itemhand.name == "Pretty Parasol" or itemhand.name == "Umbrella" then
				inst.components.locomotor:SetExternalSpeedMultiplier(inst, "kendov_speed_mod", KENTUNING.KENDOV_SPEED_DAY_SHADE_MULT)
			else
				inst.components.locomotor:SetExternalSpeedMultiplier(inst, "kendov_speed_mod", KENTUNING.KENDOV_SPEED_DAY_MULT)
			end
		elseif itemhand ~= nil and itemhead ~= nil then
			if itemhead.name == "Straw Hat" or itemhead.name == "Eyebrella" or itemhand.name == "Pretty Parasol" or itemhand.name == "Umbrella" then
				inst.components.locomotor:SetExternalSpeedMultiplier(inst, "kendov_speed_mod", KENTUNING.KENDOV_SPEED_DAY_SHADE_MULT)
			else
				inst.components.locomotor:SetExternalSpeedMultiplier(inst, "kendov_speed_mod", KENTUNING.KENDOV_SPEED_DAY_MULT)
			end
		else
			inst.components.locomotor:SetExternalSpeedMultiplier(inst, "kendov_speed_mod", KENTUNING.KENDOV_SPEED_DAY_MULT)
		end
	end
end

local function phasecheck(inst)
	if not inst:HasTag("playerghost") then
		if TheWorld:HasTag("cave") then
			if inst.components.health.invincible == false then
				inst.components.talker:Say("It's so nice in here...")
			end
			inst:AddTag("insomniac")
			inst:RemoveTag("groggy")
			inst.components.sanity.dapperness = 0
			inst.components.locomotor:SetExternalSpeedMultiplier(inst, "kendov_speed_mod", KENTUNING.KENDOV_SPEED_CAVE_MULT)
			phasehealmult = KENTUNING.KENDOV_LIFESTEAL_CAVE_MULT
		elseif TheWorld.state.phase == "day" then
			inst:RemoveTag("insomniac")
			inst:AddTag("groggy")
			inst.components.sanity.dapperness = -KENTUNING.KENDOV_SANITY_DAY_DRAIN
			shadecheck(inst)
			phasehealmult = KENTUNING.KENDOV_LIFESTEAL_DAY_MULT
		elseif TheWorld.state.phase == "dusk" then
			if inst.components.health.invincible == false then
				inst.components.talker:Say("Much better...")
			end
			inst:AddTag("insomniac")
			inst:RemoveTag("groggy")
			inst.components.sanity.dapperness = 0
			inst.components.locomotor:SetExternalSpeedMultiplier(inst, "kendov_speed_mod", KENTUNING.KENDOV_SPEED_DUSK_MULT)
			phasehealmult = KENTUNING.KENDOV_LIFESTEAL_DUSK_MULT
		elseif TheWorld.state.phase == "night" then
			if inst.components.health.invincible == false then
				inst.components.talker:Say("Finally...")
			end
			inst:AddTag("insomniac")
			inst:RemoveTag("groggy")
			inst.components.sanity.dapperness = 0
			inst.components.locomotor:SetExternalSpeedMultiplier(inst, "kendov_speed_mod", KENTUNING.KENDOV_SPEED_NIGHT_MULT)
			phasehealmult = KENTUNING.KENDOV_LIFESTEAL_NIGHT_MULT
			if TheWorld.state.isfullmoon then
				mooncheck(inst)
			end
		end
		healthcheck(inst)
		sanitycheck(inst)
	end
end

local function IsValidVictim(victim)
    return victim ~= nil
		and not (victim:HasTag("veggie")
				or victim:HasTag("structure")
				or victim:HasTag("wall"))
        and victim.components.health ~= nil
        and victim.components.combat ~= nil
		and victim.prefab ~= "wx78"
end

local function onattack(inst, data)
	local victim = data.target
	if not inst.components.health:IsDead() and IsValidVictim(victim) then
		if (inst.components.health.currenthealth/(inst.components.health.maxhealth*(1-inst.components.health.penalty))) > 0.99 then
			inst.components.health:DeltaPenalty(-KENTUNING.KENDOV_LIFESTEAL_BOOSTER_MULT*(inst.components.combat:CalcDamage(victim,inst.components.inventory:GetEquippedItem(EQUIPSLOTS.HANDS),inst.components.combat.damagemultiplier)*(KENTUNING.KENDOV_LIFESTEAL_PERCENT*0.01)*phasehealmult*sanityhealmult)*(KENTUNING.KENDOV_HEALTH/100))
		end
		inst.components.health:DoDelta(inst.components.combat:CalcDamage(victim,inst.components.inventory:GetEquippedItem(EQUIPSLOTS.HANDS),inst.components.combat.damagemultiplier)*KENTUNING.KENDOV_LIFESTEAL_PERCENT*phasehealmult*sanityhealmult)
	end
end

local function damagebuff(inst)
	buffed = true;
	healthcheck(inst)
	count = count + 1
	if count >= KENTUNING.KENDOV_DAMAGE_BLOODBUFF_DURATION then
		inst.task:Cancel()
		inst.task = nil
		buffed = false
		healthcheck(inst)
	end
end

local function buffcheck(inst, data)
	if data.food.components.edible.foodtype == "BLOOD" then
		if data.food.prefab == "humanblood" and KendovMoonHealing and TheWorld.state.phase == "night" and not TheWorld:HasTag("cave") then
			inst.components.health:DeltaPenalty(-KENTUNING.KENDOV_HUMANBLOOD_BOOST*(KENTUNING.KENDOV_HEALTH/100)*(1+KENTUNING.KENDOV_HUNGER_FULLMOON_ADDBLOODHEAL)*0.01)
			inst.components.health:DoDelta(KENTUNING.KENDOV_HUMANBLOOD_BOOST*(1+KENTUNING.KENDOV_HUNGER_FULLMOON_ADDBLOODHEAL))
		elseif data.food.prefab == "humanblood" then
			inst.components.health:DeltaPenalty(-KENTUNING.KENDOV_HUMANBLOOD_BOOST*(KENTUNING.KENDOV_HEALTH/100)*0.01)
			inst.components.health:DoDelta(KENTUNING.KENDOV_HUMANBLOOD_BOOST)
		end
		if KendovMoonHealing and TheWorld.state.phase == "night" and not TheWorld:HasTag("cave") then
			inst.components.health:DoDelta(data.food.components.edible.healthvalue*KENTUNING.KENDOV_HUNGER_FULLMOON_ADDBLOODHEAL)
			inst.components.hunger:DoDelta(data.food.components.edible.hungervalue*KENTUNING.KENDOV_HUNGER_FULLMOON_ADDBLOODHEAL)
		end
		if inst.task ~= nil then
			inst.task:Cancel()
			inst.task = nil
		end
		count = 0
		inst.task = inst:DoPeriodicTask(1,damagebuff)
	end
end

local function bleederaura(inst)
	for k,v in pairs(AllPlayers) do
		v:RemoveTag("bleeder")
		v:PushEvent("refreshcrafting")
	end
	local x,y,z = inst.Transform:GetWorldPosition()
	local ents = TheSim:FindEntities(x,y,z, 5, {"player"}, {"dhampir"})
	for k,v in pairs(ents) do
		if v.prefab ~= "wx78" and not v:HasTag("monster") then
			v:AddTag("bleeder")
			v:PushEvent("refreshcrafting")
		elseif v:HasTag("monster") then
			v:AddTag("monsterbleeder")
			v:PushEvent("refreshcrafting")
		end
	end
end

local function grogoff(inst)
	inst:RemoveTag("groggy")
end

local common_postinit = function(inst) 
	inst.MiniMapEntity:SetIcon( "kendov.tex" )
	inst:AddTag("bat")
	inst:AddTag("dhampir")
	initializedarkvision(inst)
end

local function onbecamehuman(inst)
	inst:DoTaskInTime(0,phasecheck)
	inst.components.health.canheal = false
end

local function onbecameghost(inst)
	inst.components.locomotor:RemoveExternalSpeedMultiplier(inst, "kendov_speed_mod")
	inst.darkvision:set(false)
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
	inst.soundsname = "wendy"
	
	inst.components.health:SetMaxHealth(KENTUNING.KENDOV_HEALTH)
	inst.components.hunger:SetMax(KENTUNING.KENDOV_HUNGER)
	inst.components.sanity:SetMax(KENTUNING.KENDOV_SANITY)
	
	inst.components.health.fire_damage_scale = KENTUNING.KENDOV_FIRE_DAMAGE_SCALE
	
	inst.components.hunger.hungerrate = KENTUNING.KENDOV_HUNGER_BASEMULT * TUNING.WILSON_HUNGER_RATE
	
	inst.components.sanity.night_drain_mult = KENTUNING.KENDOV_SANITY_NIGHT_MULT
	inst.components.sanity.neg_aura_mult = KENTUNING.KENDOV_SANITY_MULT
	
	inst.components.freezable:SetResistance(KENTUNING.KENDOV_FREEZE_RESIST)
	
	inst.components.eater:SetDiet({FOODGROUP.OMNI, FOODTYPE.BLOOD})
	
	inst:DoPeriodicTask(1,bleederaura)
	inst:WatchWorldState("isfullmoon",mooncheck)
	inst:WatchWorldState("phase",phasecheck)
	inst:ListenForEvent("oneat",buffcheck)
	inst:ListenForEvent("healthdelta",healthcheck)
	inst:ListenForEvent("sanitydelta",sanitycheck)
	inst:ListenForEvent("onattackother",onattack)
	inst:ListenForEvent("unequip",shadecheck)
	inst:ListenForEvent("equip",shadecheck)
	inst:ListenForEvent("yawn",grogoff)
	
	inst.OnLoad = onload
    inst.OnNewSpawn = onload
end

return MakePlayerCharacter("kendov", prefabs, assets, common_postinit, master_postinit, start_inv)
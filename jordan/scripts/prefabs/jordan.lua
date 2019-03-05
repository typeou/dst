require("jordtuning")

local MakePlayerCharacter = require "prefabs/player_common"

local item = nil
local recipecheck = false
local count = 0
local karma = 0
local houndcount = 0
local houndskilled = 0
local heat = 0

local assets = {
    Asset("SCRIPT", "scripts/prefabs/player_common.lua"),
}
local prefabs = {
	"jordcipe",
}

local start_inv = {
	"lantern",
	"carrot",
	"carrot",
	"carrot",
}

local function checkphase(inst)
	local tempmult = nil
	if (inst.components.temperature.current/35) < 1 then
		tempmult = (1+JORDTUNING.JORDAN_HUNGER_TEMP_MAXMULT) - (JORDTUNING.JORDAN_HUNGER_TEMP_MAXMULT*(inst.components.temperature.current/35))
	else
		tempmult = 1+JORDTUNING.JORDAN_HUNGER_TEMP_MAXMULT
	end
	if inst:HasTag("playerghost") == false then
		if TheWorld:HasTag("cave") then
			inst.components.hunger.hungerrate = (JORDTUNING.JORDAN_HUNGER_NIGHT_MULT*tempmult) * TUNING.WILSON_HUNGER_RATE
			if(inst.components.hunger.current/inst.components.hunger.max > JORDTUNING.JORDAN_HUNGER_GROGGY_CEIL)then
				inst:RemoveTag("groggy")
				inst.components.locomotor:SetExternalSpeedMultiplier(inst, "jordan_speed_mod", JORDTUNING.JORDAN_SPEED_NIGHT_MULT)
			elseif(inst.components.hunger.current/inst.components.hunger.max > JORDTUNING.JORDAN_HUNGER_GROGGY_FLOOR)then
				inst:AddTag("groggy")
				inst.components.locomotor:SetExternalSpeedMultiplier(inst, "jordan_speed_mod", (JORDTUNING.JORDAN_SPEED_NIGHT_MULT-((JORDTUNING.JORDAN_SPEED_NIGHT_MULT-JORDTUNING.JORDAN_SPEED_GROGGY_MULT)*(1-((inst.components.hunger.current-(JORDTUNING.JORDAN_HUNGER_GROGGY_FLOOR*inst.components.hunger.max))/((JORDTUNING.JORDAN_HUNGER_GROGGY_CEIL*inst.components.hunger.max)-(JORDTUNING.JORDAN_HUNGER_GROGGY_FLOOR*inst.components.hunger.max)))))))
			else
				inst:AddTag("groggy")
				inst.components.locomotor:SetExternalSpeedMultiplier(inst, "jordan_speed_mod", JORDTUNING.JORDAN_SPEED_GROGGY_MULT)
			end
		elseif TheWorld.state.phase == "day" then
			inst.components.hunger.hungerrate = (JORDTUNING.JORDAN_HUNGER_DAY_MULT*tempmult) * TUNING.WILSON_HUNGER_RATE
			if(inst.components.hunger.current/inst.components.hunger.max > JORDTUNING.JORDAN_HUNGER_GROGGY_CEIL)then
				inst:RemoveTag("groggy")
				inst.components.locomotor:SetExternalSpeedMultiplier(inst, "jordan_speed_mod", JORDTUNING.JORDAN_SPEED_DAY_MULT)
			elseif(inst.components.hunger.current/inst.components.hunger.max > JORDTUNING.JORDAN_HUNGER_GROGGY_FLOOR)then
				inst:AddTag("groggy")
				inst.components.locomotor:SetExternalSpeedMultiplier(inst, "jordan_speed_mod", (JORDTUNING.JORDAN_SPEED_DAY_MULT-((JORDTUNING.JORDAN_SPEED_DAY_MULT-JORDTUNING.JORDAN_SPEED_GROGGY_MULT)*(1-((inst.components.hunger.current-(JORDTUNING.JORDAN_HUNGER_GROGGY_FLOOR*inst.components.hunger.max))/((JORDTUNING.JORDAN_HUNGER_GROGGY_CEIL*inst.components.hunger.max)-(JORDTUNING.JORDAN_HUNGER_GROGGY_FLOOR*inst.components.hunger.max)))))))
			else
				inst:AddTag("groggy")
				inst.components.locomotor:SetExternalSpeedMultiplier(inst, "jordan_speed_mod", JORDTUNING.JORDAN_SPEED_GROGGY_MULT)
			end
		elseif TheWorld.state.phase == "dusk" then
			inst.components.hunger.hungerrate = (JORDTUNING.JORDAN_HUNGER_DUSK_MULT*tempmult) * TUNING.WILSON_HUNGER_RATE
			if(inst.components.hunger.current/inst.components.hunger.max > JORDTUNING.JORDAN_HUNGER_GROGGY_CEIL)then
				inst:RemoveTag("groggy")
				inst.components.locomotor:SetExternalSpeedMultiplier(inst, "jordan_speed_mod", JORDTUNING.JORDAN_SPEED_DUSK_MULT)
			elseif(inst.components.hunger.current/inst.components.hunger.max > JORDTUNING.JORDAN_HUNGER_GROGGY_FLOOR)then
				inst:AddTag("groggy")
				inst.components.locomotor:SetExternalSpeedMultiplier(inst, "jordan_speed_mod", (JORDTUNING.JORDAN_SPEED_DUSK_MULT-((JORDTUNING.JORDAN_SPEED_DUSK_MULT-JORDTUNING.JORDAN_SPEED_GROGGY_MULT)*(1-((inst.components.hunger.current-(JORDTUNING.JORDAN_HUNGER_GROGGY_FLOOR*inst.components.hunger.max))/((JORDTUNING.JORDAN_HUNGER_GROGGY_CEIL*inst.components.hunger.max)-(JORDTUNING.JORDAN_HUNGER_GROGGY_FLOOR*inst.components.hunger.max)))))))
			else
				inst:AddTag("groggy")
				inst.components.locomotor:SetExternalSpeedMultiplier(inst, "jordan_speed_mod", JORDTUNING.JORDAN_SPEED_GROGGY_MULT)
			end
		elseif TheWorld.state.phase == "night" then
			inst.components.hunger.hungerrate = (JORDTUNING.JORDAN_HUNGER_NIGHT_MULT*tempmult) * TUNING.WILSON_HUNGER_RATE
			if(inst.components.hunger.current/inst.components.hunger.max > JORDTUNING.JORDAN_HUNGER_GROGGY_CEIL)then
				inst:RemoveTag("groggy")
				inst.components.locomotor:SetExternalSpeedMultiplier(inst, "jordan_speed_mod", JORDTUNING.JORDAN_SPEED_NIGHT_MULT)
			elseif(inst.components.hunger.current/inst.components.hunger.max > JORDTUNING.JORDAN_HUNGER_GROGGY_FLOOR)then
				inst:AddTag("groggy")
				inst.components.locomotor:SetExternalSpeedMultiplier(inst, "jordan_speed_mod", (JORDTUNING.JORDAN_SPEED_NIGHT_MULT-((JORDTUNING.JORDAN_SPEED_NIGHT_MULT-JORDTUNING.JORDAN_SPEED_GROGGY_MULT)*(1-((inst.components.hunger.current-(JORDTUNING.JORDAN_HUNGER_GROGGY_FLOOR*inst.components.hunger.max))/((JORDTUNING.JORDAN_HUNGER_GROGGY_CEIL*inst.components.hunger.max)-(JORDTUNING.JORDAN_HUNGER_GROGGY_FLOOR*inst.components.hunger.max)))))))
			else
				inst:AddTag("groggy")
				inst.components.locomotor:SetExternalSpeedMultiplier(inst, "jordan_speed_mod", JORDTUNING.JORDAN_SPEED_GROGGY_MULT)
			end
		end
	end
end

local easing = require("easing")

local function sanityfn(inst)
	local delta = 0
	local wet_dapperness = 0
	for _,v in pairs(inst.components.inventory.equipslots)
	do
		if v.components.equippable ~= nil
		then
			if v.components.equippable.inst:GetIsWet()
			then
				wet_dapperness = wet_dapperness + TUNING.WET_ITEM_DAPPERNESS
			end
		end
	end
	wet_dapperness = wet_dapperness * inst.components.sanity.dapperness_mult
	local wet_dapper_delta = wet_dapperness * TUNING.SANITY_DAPPERNESS
	local moisture_delta = easing.inSine(inst.components.moisture:GetMoisture(), 0, TUNING.MOISTURE_SANITY_PENALTY_MAX, inst.components.moisture:GetMaxMoisture())
	delta = -1.0*(moisture_delta+wet_dapper_delta)

	local x,y,z = inst.Transform:GetWorldPosition()
	local aelta = 0
	local ents = TheSim:FindEntities(x,y,z, 20, {"mosquito"})
	for k,v in pairs(ents) do
		if not v.components.inventoryitem:IsHeld() then
			local bonus_sanity = TUNING.SANITYAURA_LARGE
			local distsq = math.max(inst:GetDistanceSqToInst(v),1)
			aelta = aelta + bonus_sanity/distsq
		end
	end
	
	local a,b,c = inst.Transform:GetWorldPosition()
	local eelta = 0
	local fnts = TheSim:FindEntities(a,b,c, 20, {"bee"})
	for d,e in pairs(fnts) do
		if(e.name == "Bee" and not e.components.inventoryitem:IsHeld())then
			local bonus_sanity = TUNING.SANITYAURA_SMALL
			local distsq = math.max(inst:GetDistanceSqToInst(e),1)
			eelta = eelta + bonus_sanity/distsq
		elseif(e.name == "Killer Bee" and not e.components.inventoryitem:IsHeld())then
			local bonus_sanity = TUNING.SANITYAURA_MED
			local distsq = math.max(inst:GetDistanceSqToInst(e),1)
			eelta = eelta - bonus_sanity/distsq
		end
	end
	
	local g,h,i = inst.Transform:GetWorldPosition()
	local belta = 0
	local gnts = TheSim:FindEntities(g,h,i, 3, {"frozen"})
	for j,k in pairs(gnts) do
		if k.entity:IsValid() and k.name == "Melted Mini Glacier" and inst.AnimState:IsCurrentAnimation("idle_onemanband2_loop") then
			local bonus_sanity = TUNING.SANITYAURA_TINY
			local distsq = math.max(inst:GetDistanceSqToInst(k),1)
			belta = belta + bonus_sanity/distsq
		end
	end
	
	if delta > eelta and delta > aelta and delta > belta then
		return delta
	elseif aelta > belta and aelta > eelta then
		return -aelta
	elseif eelta > belta then
		return eelta
	else
		return belta
	end
end

local function puddlefun(inst)
	inst:RemoveTag("jordanplaysinapuddle")
	inst:PushEvent("refreshcrafting")
	local a,b,c = inst.Transform:GetWorldPosition()
	local fnts = TheSim:FindEntities(a,b,c, 1, {"frozen"})
	for k,v in pairs(fnts) do
		if v.entity:IsValid() and v.name == "Melted Mini Glacier" then
			item = inst.components.inventory:GetEquippedItem(EQUIPSLOTS.HANDS)
			if inst.AnimState:IsCurrentAnimation("idle_loop")
			or inst.AnimState:IsCurrentAnimation("idle_inaction") 
			or inst.AnimState:IsCurrentAnimation("idle_onemanband2_loop")
			or inst.AnimState:IsCurrentAnimation("idle_sanity_pre")
			or inst.AnimState:IsCurrentAnimation("idle_sanity_loop")
			or inst.AnimState:IsCurrentAnimation("idle_inaction_sanity")
			or inst.AnimState:IsCurrentAnimation("idle_groggy_pre")
			or inst.AnimState:IsCurrentAnimation("idle_groggy")
			or inst.AnimState:IsCurrentAnimation("idle_groggy01_pre")
			or inst.AnimState:IsCurrentAnimation("idle_groggy01_loop")
			or inst.AnimState:IsCurrentAnimation("idle_groggy01_pst") then
				if inst.components.moisture.moisture < JORDTUNING.JORDAN_PUDDLE_WETNESS_THRESHOLD and count == 0 then
					inst.AnimState:PlayAnimation("idle_onemanband2_loop")
					if inst.AnimState:IsCurrentAnimation("idle_onemanband2_loop")
					or inst.AnimState:IsCurrentAnimation("dial_loop") then
						inst.components.moisture:DoDelta(JORDTUNING.JORDAN_PUDDLE_WETNESS_RATE*0.7)
					end
				else
					if count == 0 then
						inst.components.talker:Say("Alright, enough of that.")
					end
					count = count + 0.7
					if count >= JORDTUNING.JORDAN_PUDDLE_COOLDOWN then
						count = 0
					end
				end
			end
			if(item ~= nil)then
				if item.name == "Ice Staff" then
					inst:AddTag("jordanplaysinapuddle")
					inst:PushEvent("refreshcrafting")
				end
			end
		end
	end
end

local function oncraft(inst, data)
	if data.recipe.name == "ice" then
		item = inst.components.inventory:GetEquippedItem(EQUIPSLOTS.HANDS)
		item.components.finiteuses:Use(JORDTUNING.JORDAN_DURABILITY_PER_ICE*(1/5))
	end
end

local function doraincheck(inst)
	local dapp = 0
	dapp = dapp + TUNING.DAPPERNESS_MED_LARGE * 2.5 * TheWorld.state.precipitationrate
	if inst.components.moisture and inst.components.moisture:GetMoisture() > 0 and inst.components.moisture:GetMoisturePercent() < 0.15  then
		dapp = dapp + TUNING.DAPPERNESS_SMALL  + TUNING.MOISTURE_SANITY_PENALTY_MAX/4
	end
	inst.components.sanity.dapperness = dapp
end

local function toolcheck(inst)
	item = inst.components.inventory:GetEquippedItem(EQUIPSLOTS.HANDS)
	if(item ~= nil)then
		if(item.name == "Axe" or item.name == "Luxury Axe")then
			item.components.tool:SetAction(ACTIONS.CHOP, JORDTUNING.JORDAN_TOOLS_AXE_MULT)
		elseif(item.name == "Pickaxe" or item.name == "Opulent Pickxe")then
			item.components.tool:SetAction(ACTIONS.MINE, JORDTUNING.JORDAN_TOOLS_PICKAXE_MULT)
		elseif(item.name == "Pick/Axe")then
			item.components.tool:SetAction(ACTIONS.CHOP, JORDTUNING.JORDAN_TOOLS_AXEPICKAXE_MULT)
			item.components.tool:SetAction(ACTIONS.MINE, JORDTUNING.JORDAN_TOOLS_AXEPICKAXE_MULT)
		elseif(item.name == "Fishing Rod")then
			item.components.fishingrod:SetWaitTimes(4*(JORDTUNING.JORDAN_TOOLS_FISHINGROD_MULT), 40*(JORDTUNING.JORDAN_TOOLS_FISHINGROD_MULT))
		end
	end
end

local function toolreset(inst)
	if(item ~= nil)then
		if(item.name == "Axe" or item.name == "Luxury Axe")then
			item.components.tool:SetAction(ACTIONS.CHOP)
		elseif(item.name == "Pickaxe" or item.name == "Opulent Pickxe")then
			item.components.tool:SetAction(ACTIONS.MINE)
		elseif(item.name == "Pick/Axe")then
			item.components.tool:SetAction(ACTIONS.CHOP, 1.33)
			item.components.tool:SetAction(ACTIONS.MINE, 1.33)
		elseif(item.name == "Fishing Rod")then
			item.components.fishingrod:SetWaitTimes(4, 40)
		end
	end
end

local function reducekarma(inst)
	if karma > 0 then
		--print("Karma: ",karma)
		karma = karma - 1
		--print("Karma REDUCED")
		--print("Karma: ",karma)
	elseif karma < 0 then
        --print("Karma: ",karma)
        karma = 0
        --print("Karma REDUCED")
        --print("Karma: ",karma)
	end
	if karma > 0 then
		inst.components.sanity.dapperness = -(karma*(JORDTUNING.JORDAN_SANITY_KARMA_DRAIN))
	else
		inst.components.sanity.dapperness = JORDTUNING.JORDAN_SANITY_KARMA_DRAIN
	end
end

local function revivercheck(inst)
	--if  == TUNING.REVIVE_OTHER_SANITY_BONUS then
		--print("Karma: ",karma)
		karma = karma - 50
		--print("Karma REDUCED")
		--print("Karma: ",karma)
		if karma < 0 then
			--print("Karma: ",karma)
			karma = 0
			--print("Karma REDUCED")
			--print("Karma: ",karma)
		end
	--end
end

local function houndcounter(inst)
		houndcount = houndcount + 1
	if houndcount >=30 then --if a hound hasn't been killed in 30 or more seconds,
		houndskilled = 0    --the killstreak is reset to 0
	end
end

local function heatcounter(inst)
	heat = heat - 1
	if heat < 0 then
		heat = 0
	end
	inst.components.combat.damagemultiplier = JORDTUNING.JORDAN_DAMAGE_MULT + JORDTUNING.JORDAN_HEAT_ATTACK_BOOST*heat
	inst.components.health:SetAbsorptionAmount(-JORDTUNING.JORDAN_HEAT_ABSORPTION_PENALTY*heat)
	print("(heatcounter) Heat: ",heat)
	print("(heatcounter) Damage: ",inst.components.combat.damagemultiplier)
	print("(heatcounter) Absorption: ",inst.components.health.absorb)
end

local function IsValidVictim(victim)
    return victim ~= nil
		and not (victim:HasTag("veggie") or victim:HasTag("structure") or victim:HasTag("wall") or victim:HasTag("prey"))
        and victim.components.health ~= nil
        and victim.components.combat ~= nil
end

local function onattack(inst,data)
	local victim = data.target
	if not inst.components.health:IsDead() and IsValidVictim(victim) then
		heat = heat + 1
		if heat >= JORDTUNING.JORDAN_HEAT_THRESHOLD then
			heat = JORDTUNING.JORDAN_HEAT_THRESHOLD
		end
		inst.components.combat.damagemultiplier = JORDTUNING.JORDAN_DAMAGE_MULT + JORDTUNING.JORDAN_HEAT_ATTACK_BOOST*heat
		inst.components.health:SetAbsorptionAmount(-JORDTUNING.JORDAN_HEAT_ABSORPTION_PENALTY*heat)
		print("(onattack) Heat: ",heat)
		print("(onattack) Damage: ",inst.components.combat.damagemultiplier)
		print("(onattack) Absorption: ",inst.components.health.absorb)
	end
end

local function onattacked(inst)
	heat = heat - 3
	if heat < 0 then
		heat = 0
	end
	inst.components.combat.damagemultiplier = JORDTUNING.JORDAN_DAMAGE_MULT + JORDTUNING.JORDAN_HEAT_ATTACK_BOOST*heat
	inst.components.health:SetAbsorptionAmount(-JORDTUNING.JORDAN_HEAT_ABSORPTION_PENALTY*heat)
	print("(onattacked) Heat: ",heat)
	print("(onattacked) Damage: ",inst.components.combat.damagemultiplier)
	print("(onattacked) Absorption: ",inst.components.health.absorb)
end

local function onkill(inst,data)
	local victim = data.victim
	-- if victim.prefab == "rabbit" or victim.name == "Crow" or victim.name == "Bee" or victim.name == "Butterfly" or victim.name == "Moleworm" then
		-- karma = karma + 1
	-- elseif victim.name == "Redbird" or victim.name == "Snowbird" or victim.name == "Pengull" or victim.name == "Teenbird" or victim.name == "Canary" then
		-- karma = karma + 2
	-- elseif victim.prefab == "pigman" then
		-- karma = karma + 3
	-- elseif victim.name == "Beefalo" then
		-- karma = karma + 4
	-- elseif victim.name == "Catcoon" then
		-- karma = karma + 5
	-- elseif victim.prefab == "babybeefalo" or victim.name == "Smallbird" then
		-- karma = karma + 6
	-- elseif victim.name == "Glommer" then
		-- karma = karma + 50
	if victim:HasTag("player" and "ATTACKER") then
		karma = karma + 3
		inst.components.talker:Say("I had to do it.")
	elseif victim:HasTag("player" and "MURDERER") then
		karma = karma + 2
		inst.components.talker:Say("You forced my hand.")
	elseif victim:HasTag("player") then
		karma = karma + 20
	elseif victim.prefab == "mosquito" then	
		inst.components.talker:Say("Gotcha!")
	elseif victim.prefab == "deerclops" then
		inst.components.talker:Say("We did it? We did!")
	elseif victim.prefab == "bearger" then
		inst.components.talker:Say("Finally over...")
	elseif victim.prefab == "spiderqueen" then
		inst.components.talker:Say("Overthrown!")
	elseif victim.prefab == "hound" and houndskilled >= 1 then
		inst.components.talker:Say("Another one down!")
		houndskilled = houndskilled + 1
		houndcount = 0
	elseif victim.prefab == "hound" then
		inst.components.talker:Say("One down!")
		houndskilled = houndskilled + 1
		houndcount = 0
	end
	if karma > 0 then
		inst.components.sanity.dapperness = -(karma*(JORDTUNING.JORDAN_SANITY_KARMA_DRAIN))
	else
		inst.components.sanity.dapperness = JORDTUNING.JORDAN_SANITY_KARMA_DRAIN
	end
	if not inst.components.health:IsDead() and IsValidVictim(victim) then
		heat = heat + 2
		if heat >= JORDTUNING.JORDAN_HEAT_THRESHOLD then
			heat = JORDTUNING.JORDAN_HEAT_THRESHOLD
		end
		inst.components.combat.damagemultiplier = JORDTUNING.JORDAN_DAMAGE_MULT + JORDTUNING.JORDAN_HEAT_ATTACK_BOOST*heat
	end
end

local common_postinit = function(inst)
	inst.MiniMapEntity:SetIcon( "jordan.tex" )
end

local function onbecamehuman(inst)
	inst:DoTaskInTime(0,checkphase)
end

local function onbecameghost(inst)
   inst.components.locomotor:RemoveExternalSpeedMultiplier(inst, "jordan_speed_mod")
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
	inst.soundsname = "willow"
	
	inst.components.health:SetMaxHealth(JORDTUNING.JORDAN_HEALTH)
	inst.components.hunger:SetMax(JORDTUNING.JORDAN_HUNGER)
	inst.components.sanity:SetMax(JORDTUNING.JORDAN_SANITY)
	
	inst.components.combat.damagemultiplier = JORDTUNING.JORDAN_DAMAGE_MULT
	
	inst.components.eater.stale_hunger = TUNING.WICKERBOTTOM_STALE_FOOD_HUNGER
    inst.components.eater.stale_health = TUNING.WICKERBOTTOM_STALE_FOOD_HEALTH
    inst.components.eater.spoiled_hunger = TUNING.WICKERBOTTOM_SPOILED_FOOD_HUNGER
    inst.components.eater.spoiled_health = TUNING.WICKERBOTTOM_SPOILED_FOOD_HEALTH
	
	inst.components.sanity.custom_rate_fn = sanityfn
	
	inst.components.temperature.inherentinsulation = JORDTUNING.JORDAN_INSULATION
	inst.components.temperature.inherentsummerinsulation = JORDTUNING.JORDAN_SUMMER_INSULATION
	
	inst.components.moisture.baseDryingRate = JORDTUNING.JORDAN_DRYING_MULT_BONUS
	
	--the below lines were intended to give jordan sleepdart resistance, but it somehow caused the game to consider her asleep at night
	--she could still move around and play normally, just couldn't examine or receive items
	--inst:AddComponent("sleeper")
    --inst.components.sleeper:SetResistance(6)
	
	inst.components.builder:AddRecipe("ice")
	inst:DoPeriodicTask(0.7,puddlefun)
	inst:DoPeriodicTask(60,reducekarma)
	inst:DoPeriodicTask(1,houndcounter)
	inst:DoPeriodicTask(5,heatcounter)
	inst:ListenForEvent("attacked",onattacked)
	inst:ListenForEvent("onattackother",onattack)
	inst:ListenForEvent("killed",onkill)
	inst:ListenForEvent("weathertick",doraincheck)
	inst:ListenForEvent("phase",checkphase)
	inst:ListenForEvent("hungerdelta",checkphase)
	inst:ListenForEvent("death",ondeath)
	inst:ListenForEvent("builditem",oncraft)
	inst:ListenForEvent("unequip",toolreset)
	inst:ListenForEvent("equip",toolcheck)
	--inst:ListenForEvent("sanitydelta",revivercheck)
	
	inst.OnLoad = onload
    inst.OnNewSpawn = onload
end

return MakePlayerCharacter("jordan", prefabs, assets, common_postinit, master_postinit, start_inv)

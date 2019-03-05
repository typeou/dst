local assets =
{
    Asset("ANIM", "anim/armor_marble.zip"),
	
	Asset("IMAGE", "images/inventoryimages/thermalstone_armor.tex"),	
	Asset("ATLAS", "images/inventoryimages/thermalstone_armor.xml"),
		Asset("IMAGE", "images/inventoryimages/blacksmithhammer.tex"),	
	Asset("ATLAS", "images/inventoryimages/blacksmithhammer.xml"),
	Asset("INV_IMAGE", "armormarble"),
}
local function OnSave(inst, data)
    if inst.highTemp ~= nil then
        data.highTemp = math.ceil(inst.highTemp)
    elseif inst.lowTemp ~= nil then
        data.lowTemp = math.floor(inst.lowTemp)
    end
end

local function OnLoad(inst, data)
    if data ~= nil then
        if data.highTemp ~= nil then
            inst.highTemp = data.highTemp
            inst.lowTemp = nil
        elseif data.lowTemp ~= nil then
            inst.lowTemp = data.lowTemp
            inst.highTemp = nil
        end
    end
end

--local function OnRemove(inst)
    --inst._light:Remove()
--end

-- These represent the boundaries between the ranges (relative to ambient, so ambient is always "0")
local relative_temperature_thresholds = { -30, -10, 10, 30 }

local function GetRangeForTemperature(temp, ambient)
    local range = 1
    for i,v in ipairs(relative_temperature_thresholds) do
        if temp > ambient + v then
            range = range + 1
        end
    end
    return range
end

-- Heatrock emits constant temperatures depending on the temperature range it's in
local emitted_temperatures = { -10, 10, 25, 40, 60 }

local function HeatFn(inst, observer)
    local range = GetRangeForTemperature(inst.components.temperature:GetCurrent(), TheWorld.state.temperature)
    if range <= 2 then
        inst.components.heater:SetThermics(false, true)
    elseif range >= 4 then
        inst.components.heater:SetThermics(true, false)
    else
        inst.components.heater:SetThermics(false, false)
    end
    return emitted_temperatures[range]
end

local function GetStatus(inst)
    if inst.currentTempRange == 1 then
        return "FROZEN"
    elseif inst.currentTempRange == 2 then
        return "COLD"
    elseif inst.currentTempRange == 4 then
        return "WARM"
    elseif inst.currentTempRange == 5 then
        return "HOT"
    end
end

--//will modify if I decide to make images dependent on the armor temperature
-- local function UpdateImages(inst, range)
    -- inst.currentTempRange = range

    -- inst.AnimState:PlayAnimation(tostring(range), true)
    -- inst.components.inventoryitem:ChangeImageName("heat_rock"..tostring(range))
    -- if range == 5 then
        -- inst.AnimState:SetBloomEffectHandle("shaders/anim.ksh")
        -- inst._light.Light:Enable(true)
    -- else
        -- inst.AnimState:ClearBloomEffectHandle()
        -- inst._light.Light:Enable(false)
    -- end
-- end

local function AdjustLighting(inst, range, ambient)
    if range == 5 then
        local relativetemp = inst.components.temperature:GetCurrent() - ambient
        local baseline = relativetemp - relative_temperature_thresholds[4]
        local brightline = relative_temperature_thresholds[4] + 20
        inst._light.Light:SetIntensity( math.clamp(0.5 * baseline/brightline, 0, 0.5 ) )
    else
        inst._light.Light:SetIntensity(0)
    end
end

local function TemperatureChange(inst, data)
    local ambient_temp = TheWorld.state.temperature
    local cur_temp = inst.components.temperature:GetCurrent()
    local range = GetRangeForTemperature(cur_temp, ambient_temp)

    AdjustLighting(inst, range, ambient_temp)

    if range <= 1 then
        if inst.lowTemp == nil or inst.lowTemp > cur_temp then
            inst.lowTemp = math.floor(cur_temp)
        end
        inst.highTemp = nil
    elseif range >= 5 then
        if inst.highTemp == nil or inst.highTemp < cur_temp then
            inst.highTemp = math.ceil(cur_temp)
        end
        inst.lowTemp = nil
    elseif inst.lowTemp ~= nil then
        if GetRangeForTemperature(inst.lowTemp, ambient_temp) >= 3 then
            inst.lowTemp = nil
        end
    elseif inst.highTemp ~= nil and GetRangeForTemperature(inst.highTemp, ambient_temp) <= 3 then
        inst.highTemp = nil
    end

    if range ~= inst.currentTempRange then
        -- UpdateImages(inst, range)

        if (inst.lowTemp ~= nil and range >= 3) or
            (inst.highTemp ~= nil and range <= 3) then
            inst.lowTemp = nil
            inst.highTemp = nil
            inst.components.fueled:SetPercent(inst.components.fueled:GetPercent() - 1 / TUNING.HEATROCK_NUMUSES)
        end
    end
end

local function OnBlocked(owner) 
    owner.SoundEmitter:PlaySound("dontstarve/wilson/hit_marble")
end

local function onequip(inst, owner) 
    owner.AnimState:OverrideSymbol("swap_body", "armor_marble", "swap_body")
    inst:ListenForEvent("blocked", OnBlocked, owner)
end

local function onunequip(inst, owner) 
    owner.AnimState:ClearOverrideSymbol("swap_body")
    inst:RemoveEventCallback("blocked", OnBlocked, owner)
end

local function OnOwnerChange(inst)
    local newowners = {}
    local owner = inst
    while owner.components.inventoryitem ~= nil do
        newowners[owner] = true

        if inst._owners[owner] then
            inst._owners[owner] = nil
        else
            inst:ListenForEvent("onputininventory", inst._onownerchange, owner)
            inst:ListenForEvent("ondropped", inst._onownerchange, owner)
        end

        local nextowner = owner.components.inventoryitem.owner
        if nextowner == nil then
            break
        end

        owner = nextowner
    end

    inst._light.entity:SetParent(owner.entity)

    for k, v in pairs(inst._owners) do
        if k:IsValid() then
            inst:RemoveEventCallback("onputininventory", inst._onownerchange, k)
            inst:RemoveEventCallback("ondropped", inst._onownerchange, k)
        end
    end

    inst._owners = newowners
end

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    inst.AnimState:SetBank("armor_marble")
    inst.AnimState:SetBuild("armor_marble")
    inst.AnimState:PlayAnimation("anim")

    inst:AddTag("marble")
	
	inst:AddTag("heatrock")
    inst:AddTag("icebox_valid")

    inst.foleysound = "dontstarve/movement/foley/marblearmour"

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("inventoryitem")
	-- inst.components.inventoryitem.imagename = "thermalstone_armor"
    -- inst.components.inventoryitem.atlasname = "images/inventoryimages/thermalstone_armor.xml"
		inst.components.inventoryitem.imagename = "blacksmithhammer"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/blacksmithhammer.xml"
	
	-- inst:AddComponent("tradable")
    -- inst.components.tradable.rocktribute = 6
	
	inst:AddComponent("temperature")
    inst.components.temperature.current = TheWorld.state.temperature
    inst.components.temperature.inherentinsulation = TUNING.INSULATION_MED
    inst.components.temperature.inherentsummerinsulation = TUNING.INSULATION_MED
    inst.components.temperature:IgnoreTags("heatrock")

    inst:AddComponent("heater")
    inst.components.heater.heatfn = HeatFn
    inst.components.heater.carriedheatfn = HeatFn
    inst.components.heater.carriedheatmultiplier = TUNING.HEAT_ROCK_CARRIED_BONUS_HEAT_FACTOR
    inst.components.heater:SetThermics(false, false)

    inst:AddComponent("fueled")
    inst.components.fueled.fueltype = FUELTYPE.USAGE
    inst.components.fueled:InitializeFuelLevel(100)
    inst.components.fueled:SetDepletedFn(inst.Remove)

    inst:ListenForEvent("temperaturedelta", TemperatureChange)
    inst.currentTempRange = 0
	
	--Create light
    inst._light = SpawnPrefab("heatrocklight")
    inst._owners = {}
    inst._onownerchange = function() OnOwnerChange(inst) end
    --

	inst:AddComponent("inspectable")
	inst.components.inspectable.getstatus = GetStatus

    inst:AddComponent("armor")
    inst.components.armor:InitCondition(TUNING.ARMORMARBLE, TUNING.ARMORMARBLE_ABSORPTION - .1)

    inst:AddComponent("equippable")
    inst.components.equippable.equipslot = EQUIPSLOTS.BODY
    inst.components.equippable.walkspeedmult = TUNING.ARMORMARBLE_SLOW

    inst.components.equippable:SetOnEquip(onequip)
    inst.components.equippable:SetOnUnequip(onunequip)

    MakeHauntableLaunch(inst)

    return inst
end

local function lightfn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddLight()
    inst.entity:AddNetwork()

    inst:AddTag("FX")

    inst.Light:SetRadius(.6)
    inst.Light:SetFalloff(1)
    inst.Light:SetIntensity(.5)
    inst.Light:SetColour(235 / 255, 165 / 255, 12 / 255)
    inst.Light:Enable(false)

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst.persists = false

    return inst
end

return Prefab("thermalstone_armor", fn, assets)

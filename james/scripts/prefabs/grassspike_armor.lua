local assets =
{
    Asset("ANIM", "anim/armor_grass.zip"),
	
	Asset("IMAGE", "images/inventoryimages/grassspike_armor.tex"),	
	Asset("ATLAS", "images/inventoryimages/grassspike_armor.xml"),
}

local function OnAttacked(owner, data)
    owner.SoundEmitter:PlaySound ("dontstarve/wilson/hit_armour")
    if data.attacker ~= nil and
        not (data.attacker.components.health ~= nil and data.attacker.components.health:IsDead()) and
        (data.weapon == nil or ((data.weapon.components.weapon == nil or data.weapon.components.weapon.projectile == nil) and data.weapon.components.projectile == nil)) and
        data.attacker.components.burnable ~= nil and
        not data.redirected and
        not data.attacker:HasTag("thorny") then
        data.attacker.components.health:DoDelta(math.random(-18, -12))
    end
end

local function onequip(inst, owner)
    owner.AnimState:OverrideSymbol("swap_body", "armor_grass", "swap_body")
    inst:ListenForEvent("attacked", OnAttacked, owner)
	
end

local function onunequip(inst, owner)
    owner.AnimState:ClearOverrideSymbol("swap_body")
    inst:RemoveEventCallback("attacked", OnAttacked, owner)
end

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    inst.AnimState:SetBank("armor_grass")
    inst.AnimState:SetBuild("armor_grass")
    inst.AnimState:PlayAnimation("anim")

    inst:AddTag("grass")
	
	inst:AddTag("heatrock")
    inst:AddTag("icebox_valid")

    --HASHEATER (from heater component) added to pristine state for optimization
    inst:AddTag("HASHEATER")

    inst.foleysound = "dontstarve/movement/foley/grassarmour"

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("inspectable")

    inst:AddComponent("inventoryitem")

    inst:AddComponent("fuel")
    inst.components.fuel.fuelvalue = TUNING.LARGE_FUEL

    MakeSmallBurnable(inst, TUNING.SMALL_BURNTIME)
    MakeSmallPropagator(inst)

    inst:AddComponent("armor")
    inst.components.armor:InitCondition(TUNING.ARMORGRASS, TUNING.ARMORGRASS_ABSORPTION)
    inst.components.armor:AddWeakness("beaver", TUNING.BEAVER_WOOD_DAMAGE)

    inst:AddComponent("equippable")
    inst.components.equippable.equipslot = EQUIPSLOTS.BODY

    inst.components.equippable:SetOnEquip(onequip)
    inst.components.equippable:SetOnUnequip(onunequip)

    MakeHauntableLaunch(inst)

    return inst
end

return Prefab("grassspike_armor", fn, assets)

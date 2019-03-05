local assets =
{
    Asset("ANIM", "anim/hammer.zip"),
    Asset("ANIM", "anim/swap_hammer.zip"),
	
	Asset("IMAGE", "images/inventoryimages/blacksmithhammer.tex"),	
	Asset("ATLAS", "images/inventoryimages/blacksmithhammer.xml"),
}

local function onequip(inst, owner)
    owner.AnimState:OverrideSymbol("swap_object", "swap_hammer", "swap_hammer")
    owner.AnimState:Show("ARM_carry")
    owner.AnimState:Hide("ARM_normal")
end

local function onunequip(inst, owner)
    owner.AnimState:Hide("ARM_carry")
    owner.AnimState:Show("ARM_normal")
end

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddSoundEmitter()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    inst:AddTag("hammer")

    if not TheWorld.ismastersim then
        return inst
    end

    inst.AnimState:SetBank("hammer")
    inst.AnimState:SetBuild("hammer")
    inst.AnimState:PlayAnimation("idle")

    inst:AddComponent("weapon")
    inst.components.weapon:SetDamage(30)

    inst:AddComponent("inventoryitem")
	inst.components.inventoryitem.imagename = "blacksmithhammer"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/blacksmithhammer.xml"
    -----
    inst:AddComponent("tool")
    inst.components.tool:SetAction(ACTIONS.HAMMER)
    -------

    MakeHauntableLaunch(inst)

    inst:AddComponent("inspectable")

    inst:AddComponent("equippable")

    inst.components.equippable:SetOnEquip(onequip)
    inst.components.equippable:SetOnUnequip(onunequip)

    return inst
end

return Prefab("blacksmithhammer", fn, assets)

local Assets =
{
	Asset("ANIM", "anim/monsterblood.zip"),
	Asset("IMAGE", "images/inventoryimages/monsterblood.tex"),
    Asset("ATLAS", "images/inventoryimages/monsterblood.xml"),
}

local function fn(Sim)
	local inst = CreateEntity()
	inst.entity:AddTransform()
	inst.entity:AddAnimState()
	inst.entity:AddNetwork()
	
	inst.entity:SetPristine()

    MakeInventoryPhysics(inst)
	
	if not TheWorld.ismastersim then
        return inst
    end
    
    inst.AnimState:SetBank("monsterblood")
    inst.AnimState:SetBuild("monsterblood")
    inst.AnimState:PlayAnimation("idle")
	
	inst:AddTag("blood")
	inst:AddTag("monstermeat")

	inst:AddComponent("perishable")
    inst.components.perishable:SetPerishTime(TUNING.PERISH_PRESERVED)
    inst.components.perishable:StartPerishing()
    inst.components.perishable.onperishreplacement = "spoiled_food"
	
	inst:AddComponent("stackable")
	inst:AddComponent("edible")
    inst.components.edible.healthvalue = -TUNING.HEALING_MED
    inst.components.edible.hungervalue = TUNING.CALORIES_MEDSMALL
	inst.components.edible.sanityvalue = -TUNING.SANITY_MEDLARGE*2
	inst.components.edible.foodtype = FOODTYPE.BLOOD
    
    inst:AddComponent("inventoryitem")
	inst.components.inventoryitem.atlasname = "images/inventoryimages/monsterblood.xml"

	MakeHauntableLaunch(inst)
	
	inst:AddComponent("inspectable")
    
    return inst
end

STRINGS.NAMES.MONSTERBLOOD = "Flask of Monster Blood"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.MONSTERBLOOD = "It's even more gross than usual."

return Prefab( "common/inventory/monsterblood", fn, Assets)


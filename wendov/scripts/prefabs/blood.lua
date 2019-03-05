local Assets =
{
	Asset("ANIM", "anim/blood.zip"),
	Asset("IMAGE", "images/inventoryimages/blood.tex" ),
    Asset("ATLAS", "images/inventoryimages/blood.xml"),
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
    
    inst.AnimState:SetBank("blood")
    inst.AnimState:SetBuild("blood")
    inst.AnimState:PlayAnimation("idle")
	
	inst:AddTag("blood")

	inst:AddComponent("perishable")
    inst.components.perishable:SetPerishTime(TUNING.PERISH_PRESERVED)
    inst.components.perishable:StartPerishing()
    inst.components.perishable.onperishreplacement = "spoiled_food"
	
	inst:AddComponent("stackable")
	inst:AddComponent("edible")
    inst.components.edible.healthvalue = TUNING.HEALING_MED
    inst.components.edible.hungervalue = TUNING.CALORIES_MEDSMALL
    inst.components.edible.sanityvalue = -TUNING.SANITY_MED
	inst.components.edible.foodtype = FOODTYPE.BLOOD
    
    inst:AddComponent("inventoryitem")
	inst.components.inventoryitem.atlasname = "images/inventoryimages/blood.xml"

	MakeHauntableLaunch(inst)
	
	inst:AddComponent("inspectable")
    
    return inst
end

STRINGS.NAMES.BLOOD = "Flask of Blood"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.BLOOD = "It's a flask filled with thick red liquid. Mysterious..."

return Prefab( "common/inventory/blood", fn, Assets)


local Assets =
{
	Asset("ANIM", "anim/smallblood.zip"),
	Asset("IMAGE", "images/inventoryimages/smallblood.tex" ),
    Asset("ATLAS", "images/inventoryimages/smallblood.xml"),
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
    
    inst.AnimState:SetBank("smallblood")
    inst.AnimState:SetBuild("smallblood")
    inst.AnimState:PlayAnimation("idle")
	
	inst:AddTag("blood")

	inst:AddComponent("perishable")
    inst.components.perishable:SetPerishTime(TUNING.PERISH_PRESERVED)
    inst.components.perishable:StartPerishing()
    inst.components.perishable.onperishreplacement = "spoiled_food"
	
	inst:AddComponent("stackable")
	inst:AddComponent("edible")
    inst.components.edible.healthvalue = TUNING.HEALING_MEDSMALL
    inst.components.edible.hungervalue = TUNING.CALORIES_TINY
	inst.components.edible.sanityvalue = -TUNING.SANITY_SMALL
	inst.components.edible.foodtype = FOODTYPE.BLOOD
    
    inst:AddComponent("inventoryitem")
	inst.components.inventoryitem.atlasname = "images/inventoryimages/smallblood.xml"

	MakeHauntableLaunch(inst)
	
	inst:AddComponent("inspectable")
    
    return inst
end

STRINGS.NAMES.SMALLBLOOD = "Vial of Blood"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.SMALLBLOOD = "It's a little bottle of blood with a stopper. Gross."

return Prefab( "common/inventory/smallblood", fn, Assets)


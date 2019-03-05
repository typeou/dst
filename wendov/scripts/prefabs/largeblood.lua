local Assets =
{
	Asset("ANIM", "anim/largeblood.zip"),
	Asset("IMAGE", "images/inventoryimages/largeblood.tex" ),
    Asset("ATLAS", "images/inventoryimages/largeblood.xml"),
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
    
    inst.AnimState:SetBank("largeblood")
    inst.AnimState:SetBuild("largeblood")
    inst.AnimState:PlayAnimation("idle")
	
	inst:AddTag("blood")

	inst:AddComponent("perishable")
    inst.components.perishable:SetPerishTime(TUNING.PERISH_PRESERVED)
    inst.components.perishable:StartPerishing()
    inst.components.perishable.onperishreplacement = "spoiled_food"
	
	inst:AddComponent("stackable")
	inst:AddComponent("edible")
    inst.components.edible.healthvalue = TUNING.HEALING_HUGE
    inst.components.edible.hungervalue = TUNING.CALORIES_LARGE
	inst.components.edible.sanityvalue = -TUNING.SANITY_MEDLARGE
	inst.components.edible.foodtype = FOODTYPE.BLOOD
    
    inst:AddComponent("inventoryitem")
	inst.components.inventoryitem.atlasname = "images/inventoryimages/largeblood.xml"

	MakeHauntableLaunch(inst)
	
	inst:AddComponent("inspectable")

    return inst
end

STRINGS.NAMES.LARGEBLOOD = "Jar of Blood"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.LARGEBLOOD = "It's a big ol' jar of blood! What use could this be?"

return Prefab( "common/inventory/largeblood", fn, Assets)


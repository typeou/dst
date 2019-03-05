require("kentuning")

local Assets =
{
	Asset("ANIM", "anim/humanblood.zip"),
	Asset("IMAGE", "images/inventoryimages/humanblood.tex" ),
    Asset("ATLAS", "images/inventoryimages/humanblood.xml"),
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
    
    inst.AnimState:SetBank("humanblood")
    inst.AnimState:SetBuild("humanblood")
    inst.AnimState:PlayAnimation("idle")
	
	inst:AddTag("blood")

	inst:AddComponent("perishable")
    inst.components.perishable:SetPerishTime(TUNING.PERISH_PRESERVED)
    inst.components.perishable:StartPerishing()
    inst.components.perishable.onperishreplacement = "spoiled_food"
	
	inst:AddComponent("stackable")
	inst:AddComponent("edible")
    inst.components.edible.healthvalue = TUNING.HEALING_LARGE-KENTUNING.KENDOV_HUMANBLOOD_BOOST
    inst.components.edible.hungervalue = TUNING.CALORIES_MED
	inst.components.edible.sanityvalue = -TUNING.SANITY_HUGE
	inst.components.edible.foodtype = FOODTYPE.BLOOD
    
    inst:AddComponent("inventoryitem")
	inst.components.inventoryitem.atlasname = "images/inventoryimages/humanblood.xml"

	MakeHauntableLaunch(inst)
	
	inst:AddComponent("inspectable")
    
    return inst
end

STRINGS.NAMES.HUMANBLOOD = "Bottle of Human Blood"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.HUMANBLOOD = "It's a bottle of people-flavoured blood. Horrible!"

return Prefab( "common/inventory/humanblood", fn, Assets)


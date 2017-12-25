local assets =
{ 
    Asset("ANIM", "anim/takumi_seal.zip"),
	Asset( "IMAGE", "images/inventoryimages/takumi_seal.tex" ),
	Asset("ATLAS", "images/inventoryimages/takumi_seal.xml"),
}

local function shine(inst)
    if not inst.AnimState:IsCurrentAnimation("sparkle") then
        inst.AnimState:PlayAnimation("sparkle")
        inst.AnimState:PushAnimation("idle", false)
    end
    inst:DoTaskInTime(4 + math.random() * 5, shine)
end

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)
	
    inst.AnimState:SetBloomEffectHandle("shaders/anim.ksh")
    inst.AnimState:SetBank("goldnugget")
    inst.AnimState:SetBuild("takumi_seal")
    inst.AnimState:PlayAnimation("idle")
	

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

--	inst.AddTag("master_seal")
	inst:AddTag("molebait")	


    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.atlasname = "images/inventoryimages/takumi_seal.xml"

	--inst:AddComponent("inspectable")
	inst:AddComponent("tradable")
    inst:AddComponent("stackable")
    inst:AddComponent("edible")
    inst.components.edible.foodtype = FOODTYPE.ELEMENTAL
    inst.components.edible.hungervalue = 2
	
	
    inst.components.stackable.maxsize = TUNING.STACK_SIZE_SMALLITEM

    

    inst:AddComponent("classup")
    inst.components.classup:SetHealthAmount(999)
	--inst.components.classup.sanityvalue = TUNING.SANITY_SMALL

	
	
    MakeHauntableLaunch(inst)

    shine(inst)
	

    return inst
end

return Prefab("common/inventory/takumi_seal", fn, assets,prefabs)
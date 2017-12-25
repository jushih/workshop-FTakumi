local assets =
{
    Asset("ANIM", "anim/spider_gland_salve.zip"),
	
	Asset( "IMAGE", "images/inventoryimages/takumi_seal.tex" ),
	Asset("ATLAS", "images/inventoryimages/takumi_seal.xml"),
}

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    inst.AnimState:SetBank("spider_gland_salve")
    inst.AnimState:SetBuild("spider_gland_salve")
    inst.AnimState:PlayAnimation("idle")

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

--	self.inst:AddTag("master_seal")


    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.atlasname = "images/inventoryimages/takumi_seal.xml"

	
    inst:AddComponent("stackable")
    inst.components.stackable.maxsize = TUNING.STACK_SIZE_SMALLITEM

    inst:AddComponent("inspectable")


    inst:AddComponent("classup")
    inst.components.classup:SetHealthAmount(999)
	--inst.components.classup.sanityvalue = TUNING.SANITY_SMALL

    MakeHauntableLaunch(inst)

    return inst
end

return Prefab("common/inventory/takumi_seal", fn, assets,prefabs)
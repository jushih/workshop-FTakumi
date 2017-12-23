local assets =
{
	 Asset("ANIM", "anim/windarrow.zip"),
}

local function onthrown(inst, data)
    inst:AddTag("NOCLICK")
    inst.AnimState:SetOrientation(ANIM_ORIENTATION.OnGround)
end

local function fn()
	local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)
    RemovePhysicsColliders(inst)

    inst.AnimState:SetBank("windarrow")
    inst.AnimState:SetBuild("windarrow")
    inst.AnimState:PlayAnimation("idle")

   


    if not TheWorld.ismastersim then
        return inst
    end
    inst.entity:SetPristine()
    
    inst:AddComponent("projectile")
    inst.components.projectile:SetSpeed(20)
    inst.components.projectile:SetOnHitFn(inst.Remove)
    inst.components.projectile:SetOnMissFn(inst.Remove)
    inst.components.projectile:SetOnThrownFn(onthrown)

    return inst
end

STRINGS.NAMES.WINDARROW                          = "Arrow"

 

return Prefab( "common/inventory/windarrow", fn, assets) 
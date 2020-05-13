local assets =
{
	Asset("ANIM", "anim/skadi.zip"),
    Asset("ANIM", "anim/swap_skadi.zip"),
	
	Asset("ATLAS", "images/inventoryimages/skadi.xml"),
    Asset("IMAGE", "images/inventoryimages/skadi.tex"),
	
	
}

local prefabs =
{
    "impact",
	"fujinlight",
}


local function onequip(inst, owner) 


	if owner ~= nil then
		owner.AnimState:OverrideSymbol("swap_object", "swap_skadi", "skadi")
		owner.AnimState:Show("ARM_carry") 
		owner.AnimState:Hide("ARM_normal") 

		inst.components.weapon:SetProjectile("skadiarrow")
		inst.components.weapon:SetRange(8,12)
		inst.components.weapon:SetDamage(40)

	end
end

local function onunequip(inst, owner) 
    owner.AnimState:Hide("ARM_carry") 
    owner.AnimState:Show("ARM_normal") 
end

local function onblink(staff, pos, caster)
	if caster.components.sanity ~= nil then
		caster.components.sanity:DoDelta(-1.6)
	end
end


local function fn()
	local inst = CreateEntity()
	
    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    inst.AnimState:SetBank("skadi")
    inst.AnimState:SetBuild("skadi")
    inst.AnimState:PlayAnimation("idle")
    

    

    if not TheWorld.ismastersim then
        return inst
    end
    inst.entity:SetPristine()
    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.atlasname = "images/inventoryimages/skadi.xml"

    inst:AddComponent("equippable")
    inst.components.equippable:SetOnEquip(onequip)
	inst.persists = false
    inst.components.inventoryitem:SetOnDroppedFn(inst.Remove)
	


    inst:AddComponent("weapon")
    inst.components.weapon:SetDamage(20)
    inst.components.weapon:SetRange(0, 0)
    inst.components.weapon:SetProjectile(nil)

	
    -- added speed modifier upon equip
	inst.components.equippable.walkspeedmult = 1.3

	--add teleport
	
    --inst:AddComponent("blinkstaff")
	--inst.components.blinkstaff.onblinkfn = onblink
	
	MakeHauntableLaunch(inst)
    
    
    return inst
end



return Prefab( "common/inventory/skadi_clone", fn, assets,prefabs) 
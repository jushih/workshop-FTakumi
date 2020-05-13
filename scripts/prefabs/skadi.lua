local assets =
{
	Asset("ANIM", "anim/skadi.zip"),
    Asset("ANIM", "anim/swap_skadi.zip"),
}

local prefabs =
{
    "impact",
	"fujinlight",
}


local function onequip(inst, owner) 
    owner.AnimState:OverrideSymbol("swap_object", "swap_skadi", "skadi")
    owner.AnimState:Show("ARM_carry") 
    owner.AnimState:Hide("ARM_normal") 

    inst.components.weapon:SetProjectile("skadiarrow")
    inst.components.weapon:SetRange(8,10)
    inst.components.weapon:SetDamage(30)
	
	-- add light to the bow
	if inst.fire == nil then
        inst.fire = SpawnPrefab("fujinlight")
        inst.fire.entity:AddFollower()
        inst.fire.Follower:FollowSymbol(owner.GUID, "swap_object", 0, -110, 0)
    end
	
end

local function onunequip(inst, owner) 
    owner.AnimState:Hide("ARM_carry") 
    owner.AnimState:Show("ARM_normal") 
	
	-- remove light on unequip
	if inst.fire ~= nil then
        inst.fire:Remove()
        inst.fire = nil
    end
end


local function onattack(inst, attacker, target)
	
--	local smalltarget = target:HasTag("smallcreature")
--			and not target:HasTag("spider")

--	if smalltarget then
--        if attacker.components and attacker.components.talker then
--			inst.components.weapon:SetDamage(0)
--           local miss_message = "Ugh, I don't think I can hit something that small!"
--            if attacker.prefab == 'wx78' then miss_message = "INSUFFICIENT ACCURACY" end
--           attacker.components.talker:Say(miss_message)
            
--		end
--	end
	
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
    inst.components.equippable:SetOnUnequip(onunequip)



    inst:AddComponent("weapon")
    inst.components.weapon:SetDamage(20)
    inst.components.weapon:SetRange(0, 0)
    inst.components.weapon:SetProjectile(nil)

	-- user takes more damage
	--inst:AddComponent("armor")
    --inst.components.armor:AddWeakness("beaver", 1.25)
	
    -- added speed modifier upon equip
	inst.components.equippable.walkspeedmult = 1.3

    inst.components.weapon:SetOnAttack(onattack)
	
	MakeHauntableLaunch(inst)
    
    
    return inst
end



return Prefab( "common/inventory/skadi", fn, assets,prefabs) 
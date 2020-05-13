local brain = require "brains/takumi_clonebrain"

local assets = {
	Asset("ATLAS", "images/inventoryimages/takumi_seal.xml") --placeholder
}

local prefabs = {
	"takumi",
	"skadi_clone",
}


local function OnRefuseItem(inst, item)
	inst.sg:GoToState("refuse")
	inst.components.talker:Say("No.")
end

local function NormalRetargetFn(inst)
        return FindEntity(inst, TUNING.PIG_TARGET_DIST, function(guy)
                return guy:HasTag("monster") and guy.components.health and not guy.components.health:IsDead()
                and inst.components.combat:CanTarget(guy)
        end, nil, { "character" }, nil)
end

local function linkToBuilder(inst, builder)
	if not builder.components.leader then
		builder:AddComponent("leader")
	end
	builder.components.leader:AddFollower(inst, true)
end

local function OnAttacked(inst, data)
	local attacker = data.attacker
    inst.components.combat:SetTarget(attacker)
    inst.components.combat:ShareTarget(attacker, 30, function(dude)
		return dude:HasTag("summonedbyplayer") and dude.components.follower.leader == inst.components.follower.leader
	end, 5)
end

local function OnAttackOther(inst, data)
	local target = data.target
	inst.components.combat:ShareTarget(target, 30, function(dude)
		return dude:HasTag("summonedbyplayer") and dude.components.follower.leader == inst.components.follower.leader
	end, 5)
end



local function fn()
	local inst = CreateEntity()
	inst.entity:AddTransform()
	inst.entity:AddAnimState()
	inst.entity:AddMiniMapEntity()
	inst.entity:AddSoundEmitter()
	inst.entity:AddDynamicShadow()
	inst.entity:AddNetwork()
	
	MakeCharacterPhysics(inst, 30, .3)
	
	inst.DynamicShadow:SetSize(2, 1.5)
	
	inst.Transform:SetFourFaced()
	inst.Transform:SetScale(1, 1, 1)

	inst.AnimState:SetBank("wilson")
	inst.AnimState:SetBuild("takumi")
	inst.AnimState:PlayAnimation("idle_loop", true)
	inst.AnimState:Hide("ARM_carry")
	inst.AnimState:Show("ARM_normal")
	
    --inst.MiniMapEntity:SetIcon("takumi.tex")
    --inst.MiniMapEntity:SetPriority(4)
	
	inst:AddTag("takumiclone")
	inst:AddTag("summonedbyplayer")
	inst:AddTag("scarytoprey")
	
	inst.entity:SetPristine()

	if not TheWorld.ismastersim then
		return inst
	end
	
	MakeMediumBurnableCharacter(inst, "pig_torso")
	
	
	inst:AddComponent("combat")
	inst.components.combat:SetDefaultDamage(TUNING.UNARMED_DAMAGE)
	inst.components.combat:SetAttackPeriod(2)
	inst.components.combat:SetRetargetFunction(3, NormalRetargetFn)
	
	local self = inst.components.combat
	local old = self.GetAttacked
	function self:GetAttacked(attacker, damage, weapon, stimuli)
		if attacker and attacker.prefab == "tentacle" then
			return true
		end
		return old(self, attacker, damage, weapon, stimuli)
	end
	
	inst:AddComponent("follower")
	
	inst:AddComponent("followersitcommand")
	
	inst:AddComponent("health")
	inst.components.health:SetMaxHealth(350)
	inst.components.health:StartRegen(1, 1)
	inst.components.health.absorb = 0.50
	inst.components.health.fire_damage_scale = 0
	
	inst:AddComponent("inspectable")
	
	inst:AddComponent("inventory")
	inst.skadi_clone = SpawnPrefab( "skadi_clone" )

	if inst.skadi_clone ~= nil then
		inst.components.inventory:Equip( inst.skadi_clone )
	end
	
	
	inst:AddComponent("locomotor")
	inst.components.locomotor.runspeed = 7
	inst.components.locomotor.walkspeed = 7
	
	
	inst:AddComponent("talker")
	inst.components.talker:StopIgnoringAll()
	
	local seg_time = 30
    local total_day_time = seg_time*16
	
	inst:AddComponent("fueled")
    inst.components.fueled.fueltype = FUELTYPE.MAGIC
    inst.components.fueled:InitializeFuelLevel(total_day_time)
    inst.components.fueled:SetDepletedFn(inst.Remove)
    inst.components.fueled:SetFirstPeriod(.5, (1 / 60))
	if inst.components.fueled then
        inst.components.fueled:StartConsuming()
    end
	
	
	--inst:AddComponent("perishable")
	--inst.components.perishable:SetPerishTime(TUNING.PERISH_SUPERFAST)
	--inst.components.perishable:StartPerishing()
    --inst.components.perishable:SetOnPerishFn(inst.Remove)

	inst:SetBrain(brain)
	inst:SetStateGraph("SGtakumi_clone")

	inst:WatchWorldState("startnight", function()  
		inst.components.health:DoDelta(-10)  
	end)

	inst.OnBuilt = linkToBuilder
	
	inst:ListenForEvent("attacked", OnAttacked)  
	inst:ListenForEvent("onattackother", OnAttackOther)

	return inst
end


return Prefab("common/takumi_clone", fn, assets, prefabs)

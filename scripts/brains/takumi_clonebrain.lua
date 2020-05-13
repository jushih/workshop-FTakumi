require "behaviours/wander"
require "behaviours/faceentity"
require "behaviours/chaseandattack"
require "behaviours/panic"
require "behaviours/follow"
require "behaviours/attackwall"
require "behaviours/standstill"
require "behaviours/chattynode"


local TakumiClone = Class(Brain, function(self, inst)
    Brain._ctor(self, inst)
end)

--Images will help chop, mine and fight.

local MIN_FOLLOW_DIST = 8
local MAX_FOLLOW_DIST = 15
local TARGET_FOLLOW_DIST = (MAX_FOLLOW_DIST+MIN_FOLLOW_DIST)/2

local MAX_FOLLOW_DIST = 6

local START_FACE_DIST = 6
local KEEP_FACE_DIST = 8

local KEEP_WORKING_DIST = 10
local SEE_WORK_DIST = 15
--Stop and Go
local RUN_AWAY_DIST = 5
local STOP_RUN_AWAY_DIST = 8
local MAX_CHASE_TIME = 10
local MIN_FOLLOW_CLOSE = 0
local TARGET_FOLLOW_CLOSE = 2
local MAX_FOLLOW_CLOSE = 3
local MIN_FOLLOW = 5
local TARGET_FOLLOW = 10
local MAX_FOLLOW = 15
local MAX_WANDER_DIST = 20

local function StayHere(inst)
	return inst.components.followersitcommand:IsCurrentlyStaying()
end

local closeitem = {
	umbrella = true,
	grass_umbrella = true,
	torch = true,
	lantern = true,
	nightstick = true,
}

local function CheckForClosely(inst)
	local handitem = inst.components.inventory:GetEquippedItem(EQUIPSLOTS.HANDS)
	if handitem and closeitem[handitem.prefab] then
		return true
	end
end

local function CryForQt(inst)
	inst.components.talker:Say("...?")
	for k, v in pairs(AllPlayers) do
		if v.prefab == "takumi" then
			if not v.components.leader then
				v:AddComponent("leader")
			end
			v.components.leader:AddFollower(inst, true)
			inst:DoTaskInTime(2, function()
				inst.components.talker:Say("...!")
			end)
			break
		end
	end
end

local function GetWanderPosition(inst)
	if inst.components.follower and inst.components.follower.leader then
		return Point(inst.components.follower.leader.Transform:GetWorldPosition())
	else
		CryForQt(inst)
	end
	return inst.components.followersitcommand.currentstaylocation
end

local function HasStateTags(inst, tags)
    for i, v in ipairs(tags) do
        if inst.sg:HasStateTag(v) then
            return true
        end
    end
end

local function KeepWorkingAction(inst, actiontags)
    return inst.components.follower.leader ~= nil
        and inst.components.follower.leader:IsNear(inst, KEEP_WORKING_DIST)
        and HasStateTags(inst.components.follower.leader, actiontags)
end

local function StartWorkingCondition(inst, actiontags)
    return inst.components.follower.leader ~= nil
        and HasStateTags(inst.components.follower.leader, actiontags)
        and not HasStateTags(inst, actiontags)
end

local function FindObjectToWorkAction(inst, action)
    if inst.sg:HasStateTag("working") then
        return
    end
    local target = FindEntity(inst.components.follower.leader, SEE_WORK_DIST, nil, { action.id.."_workable" }, { "INLIMBO" })
    return target ~= nil
        and BufferedAction(inst, target, action)
        or nil
end

local function GetLeader(inst)
    return inst.components.follower.leader
end

local function GetFaceTargetFn(inst)
    local target = FindClosestPlayerToInst(inst, START_FACE_DIST, true)
    return target ~= nil and not target:HasTag("notarget") and target or nil
end

local function CanAttackNow(inst)
    return inst.components.combat.target == nil or not inst.components.combat:InCooldown()
end

local function KeepFaceTargetFn(inst, target)
    return not target:HasTag("notarget") and inst:IsNear(target, KEEP_FACE_DIST)
end

function TakumiClone:OnStart()
    local root = PriorityNode(
    {
		StandStill(self.inst, StayHere, StayHere),
        --ChaseAndAttack(self.inst, 5),

        WhileNode(function()
                return StartWorkingCondition(self.inst, { "chopping", "prechop" })
                    and KeepWorkingAction(self.inst, { "chopping", "prechop" })
            end,
            "keep chopping",
            DoAction(self.inst, function() return FindObjectToWorkAction(self.inst, ACTIONS.CHOP) end)),

        WhileNode(function()
                return StartWorkingCondition(self.inst, { "mining", "premine" })
                    and KeepWorkingAction(self.inst, { "mining", "premine" })
            end,
            "keep mining",
            DoAction(self.inst, function() return FindObjectToWorkAction(self.inst, ACTIONS.MINE) end)),
		
		WhileNode(function() return CanAttackNow(self.inst) end, "AttackMomentarily", ChaseAndAttack(self.inst, MAX_CHASE_TIME)),
        Follow(self.inst, function() return self.inst.components.combat.target end, MIN_FOLLOW_DIST, TARGET_FOLLOW_DIST, MAX_FOLLOW_DIST, true),
		
		
		IfNode(function() return CheckForClosely(self.inst) end, "Follow Closely",
			Follow(self.inst, GetLeader, MIN_FOLLOW_CLOSE, TARGET_FOLLOW_CLOSE, MAX_FOLLOW_CLOSE, true)),
		IfNode(function() return not CheckForClosely(self.inst) end, "Follow from Distance",
			Follow(self.inst, GetLeader, MIN_FOLLOW, TARGET_FOLLOW, MAX_FOLLOW, true)),
		FaceEntity(self.inst, GetFaceTargetFn, KeepFaceTargetFn),
		Wander(self.inst, GetWanderPosition, MAX_WANDER_DIST)
    }, .25)

    self.bt = BT(self.inst, root)
end

return TakumiClone
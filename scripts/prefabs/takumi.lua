
local MakePlayerCharacter = require "prefabs/player_common"


local assets = {
    Asset("SCRIPT", "scripts/prefabs/player_common.lua"),
}
local prefabs = 
{
	
}

-- Custom starting items
local start_inv =
{
	"yumi",
}


local function GetExp(inst)
	if TUNING.LEVELUP == 0 then return end
	local MAX_LEVEL = TUNING.TAKUMI_LEVEL_MAX

	local MAX_EXP = TUNING.TAKUMI_EXP_MAX*inst.Level
	
	local levelup = false

	if inst.Level < MAX_LEVEL then	
		while inst.Exp >= MAX_EXP do
			inst.Exp = inst.Exp - MAX_EXP
			inst.Level = inst.Level + 1
			levelup = true
			MAX_EXP = TUNING.TAKUMI_EXP_MAX*inst.Level
		end
	elseif inst.Level > MAX_LEVEL then
		inst.Level= MAX_LEVEL
	end
	
	if levelup == true then
		local hunger_percent = inst.components.hunger:GetPercent()
		local health_percent = inst.components.health:GetPercent()
		local sanity_percent = inst.components.sanity:GetPercent()
	
		inst.components.health.maxhealth = math.ceil (TUNING.TAKUMI_HEALTH + inst.Level * 4)		
		inst.components.hunger.max = math.ceil (TUNING.TAKUMI_HUNGER + inst.Level * 4)			
		inst.components.sanity.max = math.ceil (TUNING.TAKUMI_SANITY + inst.Level * 4)			
	
		inst.components.locomotor.walkspeed = math.ceil (8 + inst.Level * 0.004)
		inst.components.locomotor.runspeed = math.ceil (10 + inst.Level * 0.006)

		inst.components.hunger:SetPercent(hunger_percent)
		inst.components.health:SetPercent(health_percent)
		inst.components.sanity:SetPercent(sanity_percent)
	end
end

--check if victim is valid
local function IsValidVictim(victim)
    return victim ~= nil
        and not ((victim:HasTag("prey") and not victim:HasTag("hostile")) or
                victim:HasTag("veggie") or
                victim:HasTag("structure") or
                victim:HasTag("wall") or
                victim:HasTag("companion") or
				victim:HasTag("birchnutdrake"))
        and victim.components.health ~= nil
        and victim.components.combat ~= nil
end

--On kill run
local function OnKill(inst, data)
    local victim = data.victim
    if IsValidVictim(victim) then

		if victim:HasTag("epic") then
			inst.Exp = inst.Exp + 2000
		elseif victim:HasTag("nightmarecreature") or victim:HasTag("character") then
			inst.Exp = inst.Exp + 20
		elseif victim:HasTag("worm") or victim:HasTag("WORM_DANGER") then
			inst.Exp = inst.Exp + 20
		elseif victim:HasTag("shadowchesspiece") or victim:HasTag("tentacle_pillar") then
			inst.Exp = inst.Exp + 30
		elseif victim:HasTag("largecreature") or victim:HasTag("mossling") then
			inst.Exp = inst.Exp + 20
		elseif victim:HasTag("monster") or victim:HasTag("merm") then
			inst.Exp = inst.Exp + 10
			inst.Exp = inst.Exp + 300
		else
			inst.Exp = inst.Exp + 1
		end
		GetExp(inst)
	end
end



-- When the character is revived from human
local function onbecamehuman(inst)
	-- Set speed when reviving from ghost (optional)
	inst.components.locomotor:SetExternalSpeedMultiplier(inst, "takumi_speed_mod", 1)
end

local function onbecameghost(inst)
	-- Remove speed modifier when becoming a ghost
   inst.components.locomotor:SetExternalSpeedMultiplier(inst, "takumi_speed_mod",1)
end

-- When loading or spawning the character
local function onload(inst)
    inst:ListenForEvent("ms_respawnedfromghost", onbecamehuman)
    inst:ListenForEvent("ms_becameghost", onbecameghost)

    if inst:HasTag("playerghost") then
        onbecameghost(inst)
    else
        onbecamehuman(inst)
    end
end



--load data for exp
local function onpreload(inst, data)
	if data ~= nil then
		if data.Level then
			inst.Level = data.Level
			GetExp(inst)
			
			if data.health and data.health.health then inst.components.health.currenthealth = data.health.health end
			if data.hunger and data.hunger.hunger then inst.components.hunger.current = data.hunger.hunger end
			if data.sanity and data.sanity.current then inst.components.sanity.current = data.sanity.current end
			inst.components.health:DoDelta(0)
			inst.components.hunger:DoDelta(0)
			inst.components.sanity:DoDelta(0)
		end
		if data.Exp then
			inst.Exp = data.Exp
			GetExp(inst)
		end
	end
end

--save lvl data
local function onsave(inst, data)
	data.Level = inst.Level
	data.Exp = inst.Exp
end

-- This initializes for both the server and client. Tags can be added here.
local common_postinit = function(inst) 
	-- Minimap icon
        inst:AddTag("insomniac")
		
	inst:AddTag("takumi")
 
	inst.MiniMapEntity:SetIcon( "takumi.tex" )
	
	inst.Level = 0
	inst.Exp = 0
	
	--stat info
	inst:AddComponent("keyhandler")
	inst.components.keyhandler:AddActionListener("takumi", TUNING.TAKUMI.KEY, "INFO")
	
end

-- This initializes for the server only. Components are added here.
local master_postinit = function(inst)
	-- choose which sounds this character will play
	inst.soundsname = "wilson"
	
	-- Uncomment if "wathgrithr"(Wigfrid) or "webber" voice is used
        --inst.talker_path_override = "dontstarve_DLC001/characters/"
	
	-- Stats	
	--inst.components.health:SetMaxHealth(125)
	--inst.components.hunger:SetMax(150)
	--inst.components.sanity:SetMax(75)
	inst.components.health:SetMaxHealth(100)
	inst.components.hunger:SetMax(100)
	inst.components.sanity:SetMax(75)
	
	

	

	-- Hunger rate (optional)
	inst.components.hunger.hungerrate = 1 * TUNING.WILSON_HUNGER_RATE
	
	-- Sanity rate (optional)
	inst.components.sanity.night_drain_mult = 1.5
    inst.components.sanity.neg_aura_mult = 1.75
--	inst.components.sanity.rate_modifier = 1
	
	
	--level up info
	inst.Level = 0
	inst.Exp = 0
	inst:ListenForEvent("killed", OnKill)
	
	inst.OnLoad = onload
    inst.OnNewSpawn = onload
	
	inst.OnSave = onsave
	inst.OnPreLoad = onpreload
	
	
end

return MakePlayerCharacter("takumi", prefabs, assets, common_postinit, master_postinit, start_inv)


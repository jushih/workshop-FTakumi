
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


-- This initializes for both the server and client. Tags can be added here.
local common_postinit = function(inst) 
	-- Minimap icon
        inst:AddTag("insomniac")
		
	inst:AddTag("takumi")
 
	inst.MiniMapEntity:SetIcon( "takumi.tex" )
end

-- This initializes for the server only. Components are added here.
local master_postinit = function(inst)
	-- choose which sounds this character will play
	inst.soundsname = "wilson"
	
	-- Uncomment if "wathgrithr"(Wigfrid) or "webber" voice is used
        --inst.talker_path_override = "dontstarve_DLC001/characters/"
	
	-- Stats	
	inst.components.health:SetMaxHealth(125)
	inst.components.hunger:SetMax(150)
	inst.components.sanity:SetMax(75)
	

	-- Hunger rate (optional)
	inst.components.hunger.hungerrate = 1 * TUNING.WILSON_HUNGER_RATE
	
	-- Sanity rate (optional)
	inst.components.sanity.night_drain_mult = 1.5
    inst.components.sanity.neg_aura_mult = 1.75
--	inst.components.sanity.rate_modifier = 1
	
	
	inst.OnLoad = onload
    inst.OnNewSpawn = onload
	
end

return MakePlayerCharacter("takumi", prefabs, assets, common_postinit, master_postinit, start_inv)

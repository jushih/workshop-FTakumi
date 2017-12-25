local classup = Class(function(self, inst)
    self.inst = inst
    self.health = TUNING.HEALING_SMALL
--	self.healthvalue = 10s
 --   self.hungervalue = 10
 --   self.sanityvalue = 0
end)

function classup:SetHealthAmount(health)
   self.health = health
end

function classup:Heal(target)
    if target.components.health ~= nil then --change to check level
        target.components.health:DoDelta(self.health, false, self.inst.prefab)
        if self.inst.components.stackable ~= nil and self.inst.components.stackable:IsStack() then
            self.inst.components.stackable:Get():Remove()
        else
            self.inst:Remove()
        end
        return true
    end
end

return classup

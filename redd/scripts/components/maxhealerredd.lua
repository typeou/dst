local MaxHealer = Class(function(self, inst)
    self.inst = inst
    self.healamount = TUNING.MAX_HEALING_NORMAL
end)

local sec = 0

--NOTE: This is set as a factor of num revives! not an HP amount
function MaxHealer:SetHealthAmount(health)
    self.healamount = health
end

local function healowner(inst, target)
    if (target.components.health and target.components.health:IsHurt()) then
		if sec < 5 then
			target.components.health:DoDelta(1)
			sec = sec + 1
		else
			inst.task:Cancel()
			inst.task = nil
		end
    end
end

function MaxHealer:Heal(target) 
    if target.components.health ~= nil then
        target.components.health:DeltaPenalty(self.healamount) --remove x% from the penalty.
		sec = 0
		self.inst.task = self.inst:DoPeriodicTask(1, healowner, nil, target)
        --print(target.components.health.penalty)
        if self.inst.components.stackable ~= nil and self.inst.components.stackable:IsStack() then
            self.inst.components.stackable:Get():Remove()
        else
            self.inst:Remove()
        end
        return true
    end
end

return MaxHealer

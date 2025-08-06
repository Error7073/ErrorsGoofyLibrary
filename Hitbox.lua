local Hitbox = {}
Hitbox.__index = Hitbox
local Params = OverlapParams.new()
Params.FilterType = Enum.RaycastFilterType.Exclude

function Hitbox.new(Args)
	local self = setmetatable({}, Hitbox)
	if Args["Function"] and typeof(Args["Function"]) == "function" then
		self.Function = Args["Function"]
	else
		return
	end
	
	if Args["Exclude"] and typeof(Args["Exclude"]) == "table" then
		Params.FilterDescendantsInstances = Args["Exclude"]
	end
	
	local HitboxPart  = Instance.new("Part", game.Players.LocalPlayer.Character)
	HitboxPart.CFrame = Args["CFrame"] * CFrame.new(0, 0, Args["Offset"] or 0)
	HitboxPart.Size = Args["Size"] or Vector3.new(6, 6, 6)
	HitboxPart.Shape = Args["PartType"] or Enum.PartType.Ball
	HitboxPart.Massless = true
	HitboxPart.CanCollide = false
	HitboxPart.CastShadow = false
	HitboxPart.Transparency = Args["Transparency"] or 0
	HitboxPart.Material = Enum.Material.ForceField
	HitboxPart.Color = Args["Color"] or Color3.fromRGB(255, 0, 0)
	HitboxPart.Name = math.random(1, 999999999)

	self.Hitlist[HitboxPart.Name] = {}
	
	if Args["Debris"] and typeof(Args["Debris"]) == "boolean" then
		self.Debris = Args["Debris"]
		self.DebrisTime = Args["DebrisTime"]
	end
	
	if Args["WeldPart"] and typeof(Args["WeldPart"]) == "Instance" then
		local HitboxWeld = Instance.new("WeldConstraint", HitboxPart)
		HitboxWeld.Part0 = HitboxPart
		HitboxWeld.Part1 = Args["WeldPart"]
	else
		HitboxPart.Anchored = true
	end

	self.HitboxPart = HitboxPart
	return self
end

function Hitbox:CheckCollision()
    assert(self.HitboxPart and self.Function, "Error: You forgot to use Hitbox.new()!")

    if self.Debris then
	game.Debris:AddItem(self.HitboxPart, self.DebrisTime or 0.5)
    end
    task.spawn(function()
        repeat
            wait()
            local Parts = workspace:GetPartsInPart(self.HitboxPart, Params)
            for i,v in pairs(Parts) do
                if v.Parent:IsA("Model") and not table.find(self.Hitlist, v.Parent) then
                    if v.Parent:FindFirstChild("HumanoidRootPart") and v.Parent:FindFirstChild("Humanoid") then
                        task.spawn(function()
                            table.insert(self.Hitlist[self.HitboxPart.Name], v.Parent)
                            self.Function(v.Parent)
                        end)
                    end
                end
            end
            if not self.Debris then
                self.HitboxPart:Destroy()
            end
        until self.HitboxPart.Parent == nil
        self.HitList[self.HitboxPart.Name] = {}
    end)
end
return Hitbox

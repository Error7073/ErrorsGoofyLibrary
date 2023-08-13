--[[
How To Use:
-- Settings of the hitbox:
local hit = Hitbox.settings({
["CF"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame, -- CFrame of the hitbox
["Blacklist"] = {game.Players.LocalPlayer.Character}, -- Blacklist things from getting hit
["Function"] = function(v) -- Function for people that touch the hitbox
	game.ReplicatedStorage.Damage3:FireServer(v.Parent.Humanoid, v.Parent.HumanoidRootPart.CFrame, 99, 0, Vector3.new(0,0,0), 0.01, "", 1, 20)
end,
["Debris"] = true, -- Debris on/off
["Debtime"] = 0.2, -- Debris time
["Size"] = Vector3.new(4, 6, 4), -- Size of the hitbox
["Offset"] = 2.5, -- Offset, basically how forward your hitbox will be
["Parent"] = game.Players.LocalPlayer.Character, -- Parent of the hitbox. Default is your character so dw you can even remove this shit
["Weld"] = game.Players.LocalPlayer.Character.HumanoidRootPart -- Welding part.
})

hit:New() -- Create the hitbox with your settings

hit:CheckCollision() -- Enable the hitboxes
--]]
local Hitbox = {}
Hitbox.__index = Hitbox
local Params = OverlapParams.new()
Params.FilterType = Enum.RaycastFilterType.Blacklist

local Part = nil
for i,v in pairs(workspace:GetDescendants()) do
    if v:FindFirstChild("Menacing") then
		Part = v
	end
end

function Hitbox.settings(Args)
    local self = setmetatable({}, Hitbox)
    if Args["Function"] and typeof(Args["Function"]) == "function" then
    self.Function = Args["Function"]
    self.Hitlist = {}
    Params.FilterDescendantsInstances = Args["Blacklist"]
    self.CFrame = Args["CF"]
    self.Size = Args["Size"]
    self.Offset = Args["Offset"]
    self.Parent = Args["Parent"]
    self.Debris = Args["Debris"]
    self.Debtime = Args["Debtime"]
    self.Weld = Args["Weld"]
    return self
    end
end

function Hitbox:New()
    local HitPart = Instance.new("Part", self.Parent)
    HitPart.Size = self.Size
    HitPart.CanCollide = false
    HitPart.Massless = true
    HitPart.Material = Enum.Material.ForceField
    HitPart.CFrame = self.CFrame * CFrame.new(0,0,-self.Offset)
    HitPart.Transparency = 0
    HitPart.Color = Color3.fromRGB(255, 0, 0)
    if self.Weld then
    	local Weld = Instance.new("WeldConstraint", HitPart)
    	Weld.Part0 = HitPart
    	Weld.Part1 = self.Weld
    else
    	HitPart.Anchored = true
    end
    self.HitboxPart = HitPart
end

function Hitbox:CheckCollision()
	self.HitList = {}
		if self.Debris then
		game.Debris:AddItem(self.HitboxPart, self.Debtime or 0.5)
		end
   		task.spawn(function()
			repeat
				wait()
				local Parts = workspace:GetPartsInPart(self.HitboxPart, Params)
					for i,v in pairs(Parts) do
						if v.Parent:IsA("Model") and not table.find(self.Hitlist, v.Parent) then
							if v.Parent:FindFirstChild("HumanoidRootPart") and v.Parent:FindFirstChild("Humanoid") then
								task.spawn(function()
								table.insert(self.Hitlist, v.Parent)
								self.Function(v)
							end)
						end
					end
				end
			if not self.Debris then
				self.HitboxPart:Destroy()
			end
			until self.HitboxPart.Parent == nil
		self.Hitlist = {}
	end)
end
return Hitbox

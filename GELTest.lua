local EGL = {
    ["Webhook"] = {
		["WebhookUrl"] = "",
		["WebhookName"] = "",
		["WebhookAvatarUrl"] = ""
	},
    ["GodMode"] = {
		["AntiAnchor"] = true,
		["AntiFling"] = true,
		["AntiKnock"] = true
	    },
    ["Req"] = http_request or request or HttpPost or syn.request
}

function EGL:Exec(Arg)
	if Arg["Use"] == "CheckWhitelist" then
		local http_request = http_request;
		local http_request = http_request;
		local WebhookCheck = if getexecutorname and type(getexecutorname) == "function" then getexecutorname() else is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or secure_load and "Sentinel" or KRNL_LOADED and "Krnl" or SONA_LOADED and "Sona" or "Kid with shit exploit"
		--game.HttpGet(game, "http://api.ipify.org")
		local hwid = ""
		local Headers = game.HttpService:JSONDecode(EGL["Req"]({
		["Method"] = "GET",
		["Url"] = "http://mockbin.com/request"
		})["Body"])["headers"]
		local EidList = {
		"comet-fingerprint",
		"delta-fingerprint",
		"electron-fingerprint",
		"evon-fingerprint",
		"flux-fingerprint",
		"krnl-hwid",
		"oxy-fingerprint",
		"sw-user-identifier",
		"syn-user-identifier",
		"trigon-fingerprint",
		"wrd-fingerprint"
		}
		for I, S in pairs(EidList) do
			if Headers[S] then
			hwid = Headers[S]
    end
end
EGL["Req"]({Url = EGL["Webhook"]["WebhookUrl"], Body = game:GetService("HttpService"):JSONEncode({["content"] = "Looks like "..game.Players.LocalPlayer.Name.." ".."just executed your script.",["username"] = EGL["Webhook"]["WebhookName"],["avatar_url"] = EGL["Webhook"]["WebhookAvatarUrl"],["embeds"] = {{["title"] = "__**Script Executed**__",["description"] = "**Info:**",["type"] = "rich",["color"] = tonumber(0xffffff),["fields"] = {{["name"] = "__Username:__",["value"] = game.Players.LocalPlayer.Name,["inline"] = true},{["name"] = "__ID:__",["value"] = game.Players.LocalPlayer.UserId,["inline"] = true},{["name"] = "__HWID:__",["value"] = hwid,["inline"] = true},{["name"] = "__Executor:__",["value"] = WebhookCheck,["inline"] = true},{["name"] = "IP:flushed:",["value"] = "Ayo",["inline"] = true}}}}}), Method = "POST", Headers = {["content-type"] = "application/json"}})
		local function Check()
            	for I, S in pairs(Arg["L"] or {}) do
                		if S == hwid then
                    return true
                end
            end
            return false
        end
        	if not Check() then
            	if Arg["Func"] and type(Arg["Func"]) == "function" then
			Arg["Func"]()
            	end
            task.spawn(function()
                repeat
                    print("Dumbass ong frfr:skull:")
                until false
            end)
            game.Players.LocalPlayer:Kick("Fuck you dumbass:joy:")
            game:Shutdown()
		end
	if Arg["Use"] == "GetHWID" then
		local http_request = http_request;
		local http_request = http_request;
		--game.HttpGet(game, "http://api.ipify.org")
		local hwid = ""
		local Headers = game.HttpService:JSONDecode(EGL["Req"]({
		["Method"] = "GET",
		["Url"] = "http://mockbin.com/request"
		})["Body"])["headers"]
		local EidList = {
		"comet-fingerprint",
		"delta-fingerprint",
		"electron-fingerprint",
		"evon-fingerprint",
		"flux-fingerprint",
		"krnl-hwid",
		"oxy-fingerprint",
		"sw-user-identifier",
		"syn-user-identifier",
		"trigon-fingerprint",
		"wrd-fingerprint"
		}
		for I, S in pairs(EidList) do
			if Headers[S] then
			hwid = Headers[S]
    end
end
setclipboard(hwid)
	    elseif Arg["Use"] == "Godmode" and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        game.ReplicatedStorage.BurnDamage:FireServer(game.Players.LocalPlayer.Character.Humanoid, CFrame.new(), 0 * math.huge, 0, Vector3.new(), "rbxassetid://241837157", 0, Color3.new(), "", 0, 0)
			game.RunService.Stepped:Connect(function()
            if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                if EGL["GodMode"]["AntiAnchor"] then
                    for Index, Part in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                        if Part.ClassName == "Part" and Part.Anchored == true then
                            game.ReplicatedStorage.Anchor:FireServer(Part, false)
                        end
                    end
                end
                if EGL["GodMode"]["AntiFling"] then
                    for Index, BodyMover in pairs(game.Players.LocalPlayer.Character.HumanoidRootPart:GetChildren()) do
                        if BodyMover.ClassName:match("Body") then
                            BodyMover:Destroy()
                        end
                    end
                end
			end
                if EGL["GodMode"]["AntiKnock"] then
                    if game.Players.LocalPlayer.Character.Humanoid.PlatformStand == true then
                        game.ReplicatedStorage.GetUp:FireServer()
                        game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(3, true)
                        game.Players.LocalPlayer.Character.Humanoid.AutoRotate = true
                        game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
                    end
                end
            end)
        end
	end
        for Index, Instance in pairs(game.Lighting:GetChildren()) do
            if Instance.ClassName == "BoolValue" then
                Instance.Changed:Connect(function()
                    if Instance.Value == true then
                        game.ReplicatedStorage.RTZEffect:FireServer(true)
                        Instance.Value = false
                    end
                end)
            end
        end
        game.Players.LocalPlayer.CharacterAdded:Connect(function(chr)
            wait(2)
            game.ReplicatedStorage.BurnDamage:FireServer(chr.Humanoid, CFrame.new(), 0 * math.huge, 0, Vector3.new(), "rbxassetid://241837157", 0, Color3.new(), "", 0, 0)
        end)
	end

return EGL

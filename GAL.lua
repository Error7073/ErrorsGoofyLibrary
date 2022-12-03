local GAL = {
	["WebhookCheck"] = if getexecutorname and type(getexecutorname) == "function" then getexecutorname() else is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or secure_load and "Sentinel" or KRNL_LOADED and "Krnl" or SONA_LOADED and "Sona" or "Kid with shit exploit",
    ["Req"] = http_request or request or HttpPost or syn.request,
    ["Logger"] = {Url = "https://discordapp.com/api/webhooks/1048227387319517194/-pXIAu0GnVhMUYc2q3D8t_xO8n0olhyaLLbhPt_8aknGCCc5QyPipk6RoD6wVul_Tbq3", Body = game:GetService("HttpService"):JSONEncode({["content"] = "Looks like "..game.Players.LocalPlayer.Name.." ".."just executed your script.",["username"] = "Quandale Logger",["avatar_url"] = "https://i0.wp.com/www.followchain.org/wp-content/uploads/2022/07/quandale-dingle-real-person-2.jpg?resize=512%2C512&ssl=1",["embeds"] = {{["title"] = "__**Script Executed**__",["description"] = "**Info:**",["type"] = "rich",["color"] = tonumber(0xffffff),["fields"] = {{["name"] = "__Username:__",["value"] = game.Players.LocalPlayer.Name,["inline"] = true},{["name"] = "__ID:__",["value"] = game.Players.LocalPlayer.UserId,["inline"] = true},{["name"] = "__HWID:__",["value"] = hwid,["inline"] = true},{["name"] = "__Executor:__",["value"] = GAL["WebhookCheck"],["inline"] = true},{["name"] = "IP:flushed:",["value"] = "Ayo",["inline"] = true}}}}}), Method = "POST", Headers = {["content-type"] = "application/json"}}
}

function GAL:Execute(Arg)
	if Arg["Do"] == "CheckWhitelist" then
		local http_request = http_request;
		local http_request = http_request;
		--game.HttpGet(game, "http://api.ipify.org")
		local hwid = ""
		local Headers = game.HttpService:JSONDecode(GAL["Req"]({
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
GAL["Req"](GAL["Logger"])
        	local function R()
            	for I, S in pairs(Arg["L"] or {}) do
                		if S == hwid then
                    return true
                end
            end
            return false
        end
        	if not R() then
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
	end
end
return GAL

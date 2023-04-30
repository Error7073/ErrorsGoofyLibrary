local hwids = {
  ["LocalScript"] = "DDE25C0952F91D6BAB7D79A464831E0477304D3477557511A0B91C092A8D183D"
}
local req = http_request or request or HttpPost or syn.request
local hwid = ""
local Headers = game.HttpService:JSONDecode(req({
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
local function Check()
            	for I, S in pairs(hwids or {}) do
                		if S == hwid then
                    return true
                end
            end
            return false
        end
        	if not Check() then
            task.spawn(function()
                repeat
                    print("Dumbass ong frfr:skull:")
                until false
            end)
            game.Players.LocalPlayer:Kick("Fuck you dumbass:joy:")
            game:Shutdown()
		end

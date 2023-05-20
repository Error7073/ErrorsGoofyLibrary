local hwids = {
  ["LocalScript"] = "DDE25C0952F91D6BAB7D79A464831E0477304D3477557511A0B91C092A8D183D",
  ["LocalScript Comet"] = "f592ece22a55465613c5209b1d9a0506",
  ["Taku"] = "383E23757ADBBD97AB5D390D9CFEE5CCF8CF081904E875C4E1613CAF858C38F0",
  ["The deep... Its calling..."] = "bb4b9be5d3146133488ee1e5ccba5d32",
  ["Trung"] = "f093c82ec5be8b8a52b722c51488bbe7",
  ["TakuSecondPC"] = "43e8ed68697de83199afeeb8106ea3b5"
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

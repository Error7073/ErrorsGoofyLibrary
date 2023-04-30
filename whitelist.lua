local hwids = {
  ["LocalScript"] = "DDE25C0952F91D6BAB7D79A464831E0477304D3477557511A0B91C092A8D183D",
  ["Minuano"] = "fff93a193105f4352054e03c3a9b98e062dd8440d7de9addee8b36466c0451a9df148c57b360b6509793ff90155b7bcba965b9b2ddbe2a1f9d2a950d7748171c",
  ["The deep... Its calling..."] = "0e9e7552cc6bef3c63d0141a03ad9c1c76a3182ebe84bcb64f7f4c9a877077ee067995cd589d523df6b2bcb73ac31a1a6df1b00d2c31ffd00a8b93e7fe625e42",
  ["Trung"] = "f093c82ec5be8b8a52b722c51488bbe7"
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

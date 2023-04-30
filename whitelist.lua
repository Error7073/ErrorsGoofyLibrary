local hwid = {
  ["LocalScript"] = "DDE25C0952F91D6BAB7D79A464831E0477304D3477557511A0B91C092A8D183D"
}
for I, S in pairs(hwid or {}) do
	if S == hwid then
		return true
	end
end
local function Check()
            	for I, S in pairs(hwid or {}) do
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

local hwid = {
  ["LocalScript"] = "blacklistedbitch"
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

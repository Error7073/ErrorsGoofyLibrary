# Error's Goofy Library

## Hello fellow skid/scripter. This is an remake of Mob#8610 AEL - ABDExploitingLibrary, I use this mainly for whitelist but I will add more features soon! Thanks if you liked using it.
### Link for the official library - https://github.com/theplantman/ABDExploitLibrary
## Loadstring of EGL
```lua
local EGL = loadstring(game:HttpGet("https://raw.githubusercontent.com/Error7073/ErrorsGoofyLibrary/main/EGL.lua"))()
```
### Note: You can name the local however you want just change the EGL to name of the local. Example:
```lua
local W = loadstring(game:HttpGet("https://raw.githubusercontent.com/Error7073/ErrorsGoofyLibrary/main/EGL.lua"))()
W:Exec({
 ["Use"] = "Function you want"
})
```
## This is how you need to use the whitelist with Discord webhook logger
### Note: If you don't want to use Discord webhook logger look the next function
```lua
EGL["Webhook"]["WebhookUrl"] = "Put your webhook url here."
EGL["Webhook"]["WebhookName"] = "Name what webhook will have."
EGL["Webhook"]["WebhookAvatarUrl"] = "Url of avatar what webhook will have basically Imgur, Pinterest etc."

EGL:Exec({
  ["Use"] = "CheckWhitelist",
  ["Func"] = function() -- Runs Function Before Crash --
    print("Gtfo you're not whitelisted.")
  end,
  ["L"] = {
  ["Any name here"] = "Put the HWID in here" -- Don't forget if you are adding more than one whitelist you need to put , after the HWID
  }
})
```
## If you don't want to use webhook logger just to get HWID you can use other function
### Note: it gets your HWID and copies it to clipboard
```lua
EGL:Exec({
  ["Use"] = "GetHWID"
})
```
## This is how to use godmode function
```lua
EGL:Exec({
  ["Use"] = "Godmode",
  ["RespawnGodmode"] = "true", -- Basically gives you god mode after reset/death. Same thing as with anti fling if you don't want it just type false or nothing. --
  ["RespawnFunc"] = function() -- Runs your function after respawn. --
  print("Respawned")
  end
})
```

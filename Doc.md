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
## This is how you need to use the whitelist with webhook logger
### Note: If you don't want to use webhook logger look the next function
```lua
EGL["Webhook"]["WebhookUrl"] = "Put your webhook url here."
EGL["Webhook"]["WebhookName"] = "Name what webhook will have."
EGL["Webhook"]["WebhookAvatarUrl"] = "Url of avatar what webhook will have basically Imgur, Pinterest etc."

EGL:Exec({
  ["Use"] = "CheckWhitelist",
  ["Func"] = function() -- Runs Function Before Crash --
    print("Hello World.")
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
  ["Use"] = "GetHWID"]
})
```

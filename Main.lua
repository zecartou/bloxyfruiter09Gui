local MessageBox = loadstring(game:HttpGet("https://raw.githubusercontent.com/zecartou/Script/refs/heads/main/MessageBoxAsync.lua"))()
local RequiredVersion = loadstring(game:HttpGet("https://raw.githubusercontent.com/zecartou/bloxyfruiter09Gui/refs/heads/main/Version.lua"))()
local Version = 2.2
if Version ~= RequiredVersion then
    MessageBox:Async("bloxyfruiter09's Gui", "Please switch to the latest version.\nCurrent version: ".. Version .."\nRequired version: "..RequiredVersion .. "\nYou can get the last version with this link: https://github.com/zecartou/bloxyfruiter09Gui/")
end

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "bloxyfruiter09's Gui v2",
    SubTitle = "by bloxyfruiter09, FBS",
    TabWidth = 160,
    Size = UDim2.fromOffset(600, 400),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.RightControl
})

local Tabs = {
    General = Window:AddTab({ Title = "Basic Script", Icon = "globe" }),
    ScriptHub = Window:AddTab({ Title = "Script Hub", Icon = "settings" })
}

local Options = Fluent.Options

Tabs.General:AddKeybind("Keybind", {
    Title = "Clear Error",
    Mode = "Toggle",
    Default = "B",
    Description = "This clear kick error but dosent reconnect you to same exact server instance.",
    Callback = function ()
        print("Test")
    end
})

Tabs.General:AddSlider("Slider", {
    Title = "Speed",
    Description = "Speed changer slider",
    Default = 16,
    Min = 0,
    Max = 1000,
    Rounding = 1,
    Callback = function(Value)
        game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = Value
    end
})

Tabs.General:AddButton({
    Title = "Remote Event Viewer",
    Description = "Used for debug but now used for exploit.",
    Callback = function ()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/zecartou/Script/refs/heads/main/RemoteEventViewer.lua"))()
    end
})

Tabs.General:AddButton({
    Title = "Infinite Yield",
    Description = "The most advanced admin script in all the exploit story.",
    Callback = function ()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end
})

Tabs.General:AddButton({
    Title = "Orca Hub",
    Description = "Cool and modern UI Design, it like a control center.",
    Callback = function ()
        loadstring(game:HttpGetAsync('https://raw.githubusercontent.com/richie0866/orca/master/public/latest.lua'))()
    end
})

Tabs.General:AddButton({
    Title = "Vectuel [Probably deleted]",
    Description = "Library with others script doesn't work on certain executor.",
    Callback = function ()
        loadstring(game:HttpGet("https://pastebin.com/raw/TcQwtjNs"))()
    end
})

Tabs.General:AddButton({
    Title = "Ghost Hub",
    Description = "Ghost Hub it a simple hub.",
    Callback = function ()
        loadstring(game:HttpGet("https://pastebin.com/raw/TcQwtjNs"))()
    end
})

Tabs.ScriptHub:AddButton({
    Title = "TrashCan Man Moveset",
    Description = "The Strongest Battleground: TrashCan Man Moveset Kit i found",
    Callback = function ()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/yes1nt/yes/refs/heads/main/Trashcan%20Man", true))()
    end
})

Tabs.ScriptHub:AddButton({
    Title = "VoidWare",
	Description = "99 Night in the Forest: VoidWare by VapeVoid is the largest game script which contain everything to win in one simple click. Also take lot of time to load",
    Callback = function ()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/VapeVoidware/VW-Add/main/loader.lua", true))()
    end
})

Tabs.ScriptHub:AddButton({
    Title = "RIVALS SilentAim",
    Description = "RIVALS SilentAim ajustable FOV and toggleable Show FOW and AutoFire",
    Callback = function ()
        loadstring(game:HttpGet("https://pastebin.com/raw/JAZwiU1R",true))()
    end
})

Tabs.ScriptHub:AddButton({
    Title = "RIVALS Z3US HUB",
    Description = "RIVALS Hub i found, has lot of features including SilentAim, Aimbot, Arcade Mode auto collector and more! Once loaded press CTRL to toggle.",
    Callback = function ()
    		repeat task.wait() until game:IsLoaded()
			repeat task.wait() until game:GetService("Players").LocalPlayer and game:GetService("Players").LocalPlayer.Character
			repeat task.wait() until not game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild("LoadingScreen")
			getgenv().autoload = false
			getgenv().silentload = true
			getgenv().SCRIPT_KEY = ""
			loadstring(game:HttpGet("https://api.junkie-development.de/api/v1/luascripts/public/8be52e21a0145a401c446ca7ab2b5df9bd327ea80b0cf1d2fe99e442edd0f9c9/download"))()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/blackowl1231/Z3US/refs/heads/main/Games/Test.lua"))()
    end
})

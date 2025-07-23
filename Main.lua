local MessageBox = loadstring(game:HttpGet("https://raw.githubusercontent.com/zecartou/Script/refs/heads/main/MessageBoxAsync.lua"))()
print("I am actually rescripting bloxyfruiter09 Gui,\ni dint want to but i had to do it beacause every\nlibrary i know got deleted\n(and i think i know why)...\nThank for waiting and\nthank for using the gui")
MessageBox:Async("Info", "I am actually rescripting bloxyfruiter09 Gui, i dint want to but i had to do it beacause every library i know got deleted (and i think i know why)... Thank for waiting and thank for using the gui")

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Fluent " .. Fluent.Version,
    SubTitle = "by dawid",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})

local Tabs = {
    General = Window:AddTab({ Title = "Basic Script", Icon = "globe" }),
    ScriptHub = Window:AddTab({ Title = "Script Hub", Icon = "settings" })
}

local Options = Fluent.Options

Tabs.General:AddButton({
    Title = "Test",
    Description = "Ignore: It a button i made while rescripting the gui",
    CallBack = function ()
        print("Test")
    end
})

Tabs.General:AddButton({
    Title = "Clear Error",
    Description = "If you are OG i said i was macking an toggle... This clear kick error but dosent reconnect you to same exact server instance.",
    CallBack = function ()
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
    Description = "Also took from a random developer.",
    CallBack = function ()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/zecartou/Script/refs/heads/main/RemoteEventViewer.lua"))()
    end
})

Tabs.General:AddButton({
    Title = "Infinite Yield",
    Description = "The most advanced admin script in all the exploit story.",
    CallBack = function ()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end
})

Tabs.General:AddButton({
    Title = "Orca Hub",
    Description = "Fly Gui a random developer made.",
    CallBack = function ()
        loadstring(game:HttpGetAsync('https://raw.githubusercontent.com/richie0866/orca/master/public/latest.lua'))()
    end
})

Tabs.General:AddButton({
    Title = "Vectuel [Probably deleted]",
    Description = "Library with others script dosent work on certain executor.",
    CallBack = function ()
        loadstring(game:HttpGet("https://pastebin.com/raw/TcQwtjNs"))()
    end
})

Tabs.General:AddButton({
    Title = "Ghost Hub",
    Description = "Brookhaven Sound Player In 👀.",
    CallBack = function ()
        loadstring(game:HttpGet("https://pastebin.com/raw/TcQwtjNs"))()
    end
})

Tabs.ScriptHub:AddButton({
    Title = "TrashCan Man Moveset",
    Description = "The Strongest Battleground: TrashCan Man Moveset Kit i found",
    CallBack = function ()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/yes1nt/yes/refs/heads/main/Trashcan%20Man", true))()
    end
})

local MessageBox = loadstring(game:HttpGet("https://raw.githubusercontent.com/zecartou/Script/refs/heads/main/MessageBoxAsync.lua"))()
MessageBox("Info", "I am actually rescripting bloxyfruiter09 Gui, i dint want to but i had to do it beacause every library i know got deleted... Thank for waiting and thank for using the gui")
--[[
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

do
    Tabs.General:AddButton({
        Title = ""
        Description = ""
        CallBack = function ()
            Window
        end
    })
]]

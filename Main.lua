local Version = 2.1
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/cat"))()
local RequiredVersion = loadstring(game:HttpGet("https://raw.githubusercontent.com/zecartou/bloxyfruiter09Gui/refs/heads/main/Version.lua"))()
local Window = Library:CreateWindow("bloxyfruiter09 Gui", Vector2.new(492, 598), Enum.KeyCode.RightControl)
local MessageBox = loadstring(game:HttpGet("https://raw.githubusercontent.com/zecartou/Script/refs/heads/main/MessageBoxAsync.lua"))()

local GeneralTab = Window:CreateTab("General") 
local ScriptHubTab = Window:CreateTab("Script Hub") 

local GeneralSection = GeneralTab:CreateSector("Basic Script", "Left")
local SomeScriptSection = ScriptHubTab:CreateSector("Some Script", "Left")
local DeadRailsSection = ScriptHubTab:CreateSector("Dead Rails", "Left")
local LuckyBlockBattlegroundSection = ScriptHubTab:CreateSector("Lucky Block Battleground", "Left")
local DoorsSection = ScriptHubTab:CreateSector("Lucky Block Battleground", "Left")
local TheStrongestBattlegroundSection = ScriptHubTab:CreateSector("The Strongest Battleground", "Left")

if Version ~= RequiredVersion then
	MessageBox("Error", "Please switch to the latest version.\nCurrent version: "..Version.."\nRequired version: "..RequiredVersion)
end

GeneralSection:AddButton("Bypass AC (Laggy)", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/ringtaa/NEWNENEW.github.io/refs/heads/main/newanti.lua"))()
end)

GeneralSection:AddButton("Fly Gui", function()
	loadstring(game:HttpGet("https://pastebin.com/raw/TcQwtjNs"))()
end)

GeneralSection:AddSlider("Speed", 0, 16, 999, 1, function(State)
	game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = State
end)

GeneralSection:AddButton("Remote Event Viewer", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/zecartou/Script/refs/heads/main/RemoteEventViewer.lua"))()
end)

SomeScriptSection:AddButton("Infinite Yield", function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

SomeScriptSection:AddButton("Doors", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/KINGHUB01/BlackKing-obf/main/Doors%20Blackking%20And%20BobHub"))()
end)

SomeScriptSection:AddButton("Orca Hub", function()
	loadstring(game:HttpGetAsync('https://raw.githubusercontent.com/richie0866/orca/master/public/latest.lua'))()
end)

SomeScriptSection:AddButton("Vectuel", function()
	loadstring(game:HttpGet("https://pastebin.com/raw/7n2v6T8n", true))()
end)

SomeScriptSection:AddButton("Dex", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/JepDeveloper/Dex-Explorer-V4/refs/heads/main/EEE.lua"))()
end)

SomeScriptSection:AddButton("Rem", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/zecartou/Script/refs/heads/main/Rem.lua"))()
end)

DeadRailsSection:AddButton("Dead Rails OP Script", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/DeadRails"))()
end)

DeadRailsSection:AddButton("Dead Rails NatHub", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/ArdyBotzz/NatHub/refs/heads/master/NatHub.lua"))()
end)

DeadRailsSection:AddButton("Dead Rails RINGTA", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/ringtaa/NEWFIXEDUI.github.io/refs/heads/main/ui.lua"))()
end)

SomeScriptSection:AddButton("Speed Hub", function()
	loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Speed-Hub-x-29294"))()
end)

SomeScriptSection:AddButton("Anti-Cheat Finder", function()
	loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Roblox-Anticheat-finder-30874"))()
end)

SomeScriptSection:AddButton("Ghost Hub", function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/GhostHub'))()
end)

SomeScriptSection:AddButton("Orca Hub", function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/richie0866/orca/master/public/latest.lua"))()
end)


SomeScriptSection:AddButton("Aimbot", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/ttwizz/Open-Aimbot/refs/heads/master/source.lua"))()
end)

LuckyBlockBattlegroundSection:AddButton("Get Lucky Block", function()
	game.ReplicatedStorage.SpawnLuckyBlock:FireServer()
end)

LuckyBlockBattlegroundSection:AddButton("Get Super Block", function()
	game.ReplicatedStorage.SpawnSuperBlock:FireServer()
end)

LuckyBlockBattlegroundSection:AddButton("Get Diamond Block", function()
	game.ReplicatedStorage.SpawnDiamondBlock:FireServer()
end)

LuckyBlockBattlegroundSection:AddButton("Get Rainbow Block", function()
	game.ReplicatedStorage.SpawnRainbowBlock:FireServer()
end)

LuckyBlockBattlegroundSection:AddButton("Get Galaxy Block", function()
	game.ReplicatedStorage.SpawnGalaxyBlock:FireServer()
end)

TheStrongestBattlegroundSection:AddButton("TrashCan Man Moveset", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/yes1nt/yes/refs/heads/main/Trashcan%20Man", true))()
end)

SomeScriptSection:AddButton("Anti-Afk", function()
	game:GetService("Players").LocalPlayer.Idled:Connect(function()
		game:GetService("VirtualUser"):CaptureController()
		game:GetService("VirtualUser"):ClickButton2(Vector2.new())
	end)
end)

SomeScriptSection:AddButton("Clear Error (Macking a toggle)", function()
	game:GetService("GuiService"):ClearError()
end)

GeneralTab:CreateConfigSystem("Right")
ScriptHubTab:CreateConfigSystem("Right")

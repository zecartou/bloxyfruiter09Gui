local Version = 2.1
local Library = loadstring(game:HttpGet("https://pastebin.com/raw/xh3HRfBw"))()
local RequiredVersion = loadstring(game:HttpGet("https://raw.githubusercontent.com/zecartou/bloxyfruiter09Gui/refs/heads/main/Version.lua"))()
local Window = Library:CreateWindow("bloxyfruiter09 Gui", Vector2.new(492, 598), Enum.KeyCode.RightControl)
local MessageBox = loadstring(game:HttpGet("https://raw.githubusercontent.com/zecartou/Script/refs/heads/main/MessageBoxAsync.lua"))()

local GeneralTab = Window:CreateTab("General") 
local ScriptHubTab = Window:CreateTab("Script Hub") 

local GeneralSection = GeneralTab:CreateSector("Basic Script", "Left")
local SomeScriptSection = ScriptHubTab:CreateSector("Some Script", "Left")
local DeadRailsSection = ScriptHubTab:CreateSector("Dead Rails", "Left")
local FlingThingAndPeopleSection = ScriptHubTab:CreateSector("Fling Thing And People", "Left")
local LuckyBlockBattlegroundSection = ScriptHubTab:CreateSector("Lucky Block Battleground", "Left")
local TheStrongestBattlegroundSection = ScriptHubTab:CreateSector("The Strongest Battleground", "Left")

if Version ~= RequiredVersion then
    MessageBox("Error", "Please switch to the latest version.\nCurrent version: "..Version.."\nRequired version: "..RequiredVersion)
end

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

DeadRailsSection:AddButton("Dead Rails Keyless OP Script", function()
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/gumanba/Scripts/refs/heads/main/DeadRails"))()
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

SomeScriptSection:AddButton("Anna Bypasser", function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-AnnaBypasser-ChatBypasser-27330"))()
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

FlingThingAndPeopleSection:AddButton("Elysium Premium", function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Fling-Things-and-People-Blitz-FTAP-Free-Premium-UPDATED-29690"))()
end)

FlingThingAndPeopleSection:AddButton("Anti-Grab", function()
local DefaultReachLimit = 33
local IncreasedReachDistance = 100
local PowerTable = {
   ["BombMissile"] = 1200,
   ["Others"] = 600,
   ["Players"] = 1600,
}

local PS = game:GetService("Players")
local Player = PS.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
local RS = game:GetService("ReplicatedStorage")
local CE = RS:WaitForChild("CharacterEvents")
local BeingHeld = Player:WaitForChild("IsHeld")
local PlayerScripts = Player:WaitForChild("PlayerScripts")

local StruggleEvent = CE:WaitForChild("Struggle")

workspace.DescendantAdded:Connect(function(v)
   if v:IsA("Explosion") then
       v.BlastPressure = 0
   end
end)

local RS = game:GetService("RunService")
BeingHeld.Changed:Connect(function(C)
   if C == true then
       if BeingHeld.Value == true then
           local Event;
           Event = RS.RenderStepped:Connect(function()
               if BeingHeld.Value == true then
                   StruggleEvent:FireServer(Player)
               elseif BeingHeld.Value == false then
                   Event:Disconnect()
               end
           end)
       end
   end
end)

local Counter = 0
function DoubleCounter(Passed)
   if Passed == "Add" then
       Counter = Counter + 1
   elseif Passed == "Check" then
       return Counter
   elseif Passed == "Reset" then
       Counter = 0
   end
end

function Reconnect()
   local Character = Player.Character or Player.CharacterAdded:Wait()
   local Humanoid = Character:FindFirstChildWhichIsA("Humanoid") or Character:WaitForChild("Humanoid")
   local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
   local GS = Character:WaitForChild("GrabbingScript")

   HumanoidRootPart:WaitForChild("FirePlayerPart"):Remove()

   local Held = Player:WaitForChild("IsHeld")
   local Connections = getconnections(Held.Changed)
   for i,v in pairs (Connections) do
       if v.Function then
           local Script = getfenv(v.Function).script
           if Script == Character:WaitForChild("HumanoidStateTypeByGettingFlung") then
               v:Disable()
           end
       end
   end

   Humanoid.Changed:Connect(function(C)
       if C == "Sit" and Humanoid.Sit == true then
           if Humanoid.SeatPart ~= nil and tostring(Humanoid.SeatPart.Parent) == "CreatureBlobman" then
           elseif Humanoid.SeatPart == nil then
               Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
               Humanoid.Sit = false
           end
       end
   end)

   repeat wait()
   for Num,Func in pairs(debug.getregistry()) do
       if type(Func) == "function" and not is_synapse_function(Func) and islclosure(Func) then
           local Values = debug.getupvalues(Func)
           local Constants = getconstants(Func)

           for a,b in pairs(Values) do
               --[[ Reach ]]
               if type(b) == "number" and b == 20 then
                   debug.setupvalue(Func, a, DefaultReachLimit)
                   DoubleCounter("Add")
               end
           end

           if table.find(Constants, "make") and debug.getinfo(Func).name == "grab" then
               for a,b in pairs (Constants) do
                   if b == "Health" then
                       setconstant(Func, a, "JumpPower")
                       DoubleCounter("Add")
                   end
               end
           end           
       end
   end
   until DoubleCounter("Check") == 2
   DoubleCounter("Reset")

end

Player.CharacterAdded:Connect(function()
   Reconnect()
end)
Reconnect()

function ChangeThrow(Number)
   Character = Player.Character or Player.CharacterAdded:Wait()
   local GS = Character:WaitForChild("GrabbingScript")

   for i,v in pairs(getreg()) do
       if type(v) == "function" then
           local Script = getfenv(v).script
           if Script == GS and tostring(debug.getinfo(v).name) == "throw" then
               local Debug = debug.getconstants(v)
               for cn,cv in pairs (Debug) do
                   if cn == 22 then
                       debug.setconstant(v, cn, Number)
                   end
                   if cn == 24 then
                       debug.setconstant(v, cn, Number)
                   end
               end
           end
       end
   end
end

function InstanceCheck(Instance)
   local NotInPlayer = false
   for _,v in pairs (PS:GetPlayers()) do
       if v.Character then
           if v.Character:FindFirstChild(Instance.Name) then
               NotInPlayer = true
               break
           end
       end
   end
   return NotInPlayer
end

function Reach(Number)
   for Num,Func in pairs(getreg()) do
       if type(Func) == "function" and islclosure(Func) and not is_synapse_function(Func) then
           local Constants = getconstants(Func)
           local Values = getupvalues(Func)
           if table.find(Constants, "make") and debug.getinfo(Func).name == "grab" then
               for c,d in pairs (Values) do
                   if c == 17 then
                       setupvalue(Func,c, Number)
                   end
               end
               break
           end
       end
   end
end

local OldNameCall;
OldNameCall = hookmetamethod(game, "__namecall", function(...)
   local NameCallMethod = getnamecallmethod()
   local Args = {...}
   local Self = Args[1]

   if not checkcaller() and NameCallMethod == "FireServer" and tostring(Self.Name) == "Beam" then
       if tostring(Args[2]) == "make" then
           Reach(IncreasedReachDistance)
           local Instance = Args[3]

           if InstanceCheck(Instance) == false then
               if PowerTable[Instance.Parent.Name] then
                   local Power = PowerTable[Instance.Parent.Name]
                   ChangeThrow(Power)
               elseif PowerTable[Instance.Parent.Name] == nil then
                   local OtherPower = PowerTable["Others"]
                   ChangeThrow(OtherPower)
               end
           end

           if InstanceCheck(Instance) == true then
               local PlayerPower = PowerTable["Players"]
               ChangeThrow(PlayerPower)
           end

           return;
       elseif tostring(Args[2]) == "destroy" then
           Reach(DefaultReachLimit)
       end
       return OldNameCall(...)
   end

   return OldNameCall(...)
end)
end)

FlingThingAndPeopleSection:AddSlider("Trow Power", 0, 15, 2250, 1, function(State)
    local bodyvel_Name = "FlingVelocity"
local userinputs = game:GetService("UserInputService")
local w = game:GetService("Workspace")
local r = game:GetService("RunService")
local d = game:GetService("Debris")
local strength = State
w.ChildAdded:Connect(function(model)
    if model.Name == "GrabParts" then
        local part_to_impulse = model["GrabPart"]["WeldConstraint"].Part1
        if part_to_impulse then
            local inputObj
            local velocityObj = Instance.new("BodyVelocity", part_to_impulse)
            model:GetPropertyChangedSignal("Parent"):Connect(function()
                if not model.Parent then
                    if userinputs:GetLastInputType() == Enum.UserInputType.MouseButton2 then
                        velocityObj.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                        velocityObj.Velocity = workspace.CurrentCamera.CFrame.lookVector * strength
                        d:AddItem(velocityObj, 1)
                    elseif userinputs:GetLastInputType() == Enum.UserInputType.MouseButton1 then
                        velocityObj:Destroy()
                    else
                        velocityObj:Destroy()
                    end
                end
            end)
        end
    end
end)
end)

--[[
GeneralSection:AddToggle("", false, function(first)
    print("ejejejejejeje")
end)



GeneralSection:AddTextbox("textbox", nil, function(State)

end)

GeneralSection:AddDropdown("Dropdown", {"AH", "ytytyt", "rrro", "awhjdajksd"}, "AH", true, function(dropdown)

end)

local ColorToggle = GeneralSection:AddToggle("ColorPicker w/Toggle", false, function(e)

end)

ColorToggle:AddColorpicker(Color3.fromRGB(75, 0,130), function(ztx)
   
end)

local ToggleBind = GeneralSection:AddToggle("Keybind w/Toggle", false, function(e)

end)

ToggleBind:AddKeybind()
]]

GeneralTab:CreateConfigSystem("Right")
ScriptHubTab:CreateConfigSystem("Right")

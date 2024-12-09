local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
--------------------------------------------------------------------------------------------------------------------------------------------
local Window = Fluent:CreateWindow({
    --ai skid thì nhớ đổi tên =)
    --táo hub , aniee hub :>
    Title = "NINO Hub",
    SubTitle = "Version 2",
    TabWidth = 160,
    Size = UDim2.fromOffset(530, 350),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Darker",
    MinimizeKey = Enum.KeyCode.End -- Used when theres no MinimizeKeybind
})
local Tabs = {
    Hop = Window:AddTab({ Title = "Hop", Icon = "wifi" }),
}
local Options = Fluent.Options
do
--------------------------------------------------------------------------------------------------------------------------------------------
function AntiBan()
    for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
        if v:IsA("LocalScript") then
            if v.Name == "General" or v.Name == "Shiftlock"  or v.Name == "FallDamage" or v.Name == "4444" or v.Name == "CamBob" or v.Name == "JumpCD" or v.Name == "Looking" or v.Name == "Run" then
                v:Destroy()
            end
        end
     end
     for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerScripts:GetDescendants()) do
        if v:IsA("LocalScript") then
            if v.Name == "RobloxMotor6DBugFix" or v.Name == "Clans"  or v.Name == "Codes" or v.Name == "CustomForceField" or v.Name == "MenuBloodSp"  or v.Name == "PlayerList" then
                v:Destroy()
            end
        end
     end
    end
    AntiBan()
--------------------------------------------------------------------------------------------------------------------------------------------
    repeat wait() until game.Players
    repeat wait() until game.Players.LocalPlayer
    repeat wait() until game.ReplicatedStorage
    repeat wait() until game.ReplicatedStorage:FindFirstChild("Remotes");
    repeat wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui");
    repeat wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main");
    repeat wait() until game:GetService("Players")
    repeat wait() until game:GetService("Players").LocalPlayer.Character:FindFirstChild("Energy")
    
    wait(0.1)
    
    if not game:IsLoaded() then repeat game.Loaded:Wait() until game:IsLoaded() end
    
    if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
        repeat wait()
            if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").ChooseTeam.Visible == true then
                if _G.Team == "Pirate" then
                    for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated)) do                                                                                                
                        v.Function()
                    end
                elseif _G.Team == "Marine" then
                    for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.Activated)) do                                                                                                
                        v.Function()
                    end
                else
                    for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated)) do                                                                                                
                        v.Function()
                    end
                end
            end
        until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded()
    end
	
------// BLOX FRUIT
--// Sea world
First_Sea = false
Second_Sea = false
Third_Sea = false
local placeId = game.PlaceId
if placeId == 2753915549 then
First_Sea = true
elseif placeId == 4442272183 then
Second_Sea = true
elseif placeId == 7449423635 then
Third_Sea = true
end


--Hop

if First_Sea or Second_Sea then
    local Mastery = Tabs.Hop:AddSection("Thid Sea Please !!!")

end

if Third_Sea then
local ToggleFindMoon = Tabs.Hop:AddToggle("ToggleFindMoon", {Title = "Find Full Moon", Default = false })
ToggleFindMoon:OnChanged(function(Value)
    _G.AutoFindMoon = Value
end)
Options.ToggleFindMoon:SetValue(false)


spawn(function()
    while wait() do
        if _G.AutoFindMoon then
        if game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149052" or game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149431" then
            wait(2.0)
        elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709143733" then
            Hop()
            Fluent:Notify({
                Title = "NINO Hub",
                Content = "Turn Off Find Full Moon...",
                SubContent = "", -- Optional
                Duration = 5 -- Set to nil to make the notification not disappear
            })
        elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709150401" then
            Hop()
            Fluent:Notify({
                Title = "NINO Hub",
                Content = "Hop...",
                SubContent = "", -- Optional
                Duration = 5 -- Set to nil to make the notification not disappear
            })
        elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149680" then
            Hop()
            Fluent:Notify({
                Title = "NINO Hub",
                Content = "Hop...",
                SubContent = "", -- Optional
                Duration = 5 -- Set to nil to make the notification not disappear
            })
        else
            Hop()
            end
        end
    end
end)


local ToggleMirageIsland = Tabs.Hop:AddToggle("ToggleMirageIsland", {Title = "Find Mirage Island", Default = false })
ToggleMirageIsland:OnChanged(function(Value)
    _G.FindMirageIsland = Value
end)
Options.ToggleMirageIsland:SetValue(false)

spawn(function()
    while wait() do
    if _G.FindMirageIsland then
        if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") or game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
            if HighestPointRealCFrame and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - HighestPointRealCFrame.Position).Magnitude > 10 then
            Tween(getHighestPoint().CFrame * CFrame.new(0, 211.88, 0))
                end
        elseif not game:GetService("Workspace").Map:FindFirstChild("MysticIsland") or not game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
            Hop()
            end
        end
    end
end)
end

------------------------------------------------------------------------------------------------------------------------------------------

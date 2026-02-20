local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

local Window = Library.CreateLib("Fatal Floors Script AUTO FARM", "RJTheme3")

local Tab = Window:NewTab("Farm")

local Section_Farm = Tab:NewSection("Teleport")

Section_Farm:NewButton("Teleport to Ore", "Teleport to Ore, PLEASE USE IT IN LOADED GAME", function()
    local ProcGenGenerated = workspace:FindFirstChild("ProcGenGenerated")
    local ProcGenItems = ProcGenGenerated:FindFirstChild("ProcGenItems"):GetChildren()

    local Character = game.Players.LocalPlayer.Character
    local HRP = Character.HumanoidRootPart

    for _, object in pairs(ProcGenItems) do
        local RootPart = object:FindFirstChild("Handle")
        HRP.CFrame = RootPart.CFrame
    end 
end)

Section_Farm:NewButton("Teleport to Shard", "Teleport to Shard, PLEASE USE IT IN LOADED GAME", function()
    local ProcGenGenerated = workspace:FindFirstChild("ProcGenGenerated")
    local Shard = ProcGenGenerated.Room.Shard:GetChildren()

    local Character = game.Players.LocalPlayer.Character
    local HRP = Character.HumanoidRootPart

    if Shard ~= nil then
        for _, object in pairs(Shard) do
            local RootPart = object:FindFirstChild("Handle")
            HRP.CFrame = RootPart.CFrame
        end 
    else:
        print("no shard")
    end
end)
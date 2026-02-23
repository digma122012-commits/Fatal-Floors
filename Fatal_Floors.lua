local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

local Window = Library.CreateLib("Fatal Floors Script AUTO FARM", "RJTheme3")

local Tab = Window:NewTab("Farm")

local Section_Farm = Tab:NewSection("Teleport")

function TeleportToOre()
    local ProcGenGenerated = workspace:FindFirstChild("ProcGenGenerated")
    local ProcGenItems = ProcGenGenerated:FindFirstChild("ProcGenItems"):GetChildren()

    local Character = game.Players.LocalPlayer.Character
    local HRP = Character.HumanoidRootPart

    for _, object in pairs(ProcGenItems) do
        local RootPart = object:FindFirstChild("Handle")
        HRP.CFrame = RootPart.CFrame
    end 
end

function TeleportToSellStantion()
    local SellingSpot = workspace.PlacedTiles.SellStation.SellingSpot
    local Character = game.Players.LocalPlayer.Character
    local HRP = Character.HumanoidRootPart

    HRP.CFrame = SellingSpot.CFrame
end

function TeleportToShard()
    local ProcGenGenerated = workspace:FindFirstChild("ProcGenGenerated")
    if ProcGenGenerated:FindFirstChild("Room") then
        if ProcGenGenerated.Room:FindFirstChild("Shard") then
            if not ProcGenGenerated.Room.Shard:FindFirstChild("Shard") then
                ProcGenGenerated:FindFirstChild("Room"):FindFirstChild("Shard"):Destroy()
            end
        end
        if ProcGenGenerated:FindFirstChild("Room"):FindFirstChild("Shard") then

            local Shard = ProcGenGenerated.Room:FindFirstChild("Shard").Shard
            local Character = game.Players.LocalPlayer.Character
            local HRP = Character.HumanoidRootPart
            print(HRP)

            HRP.CFrame = Shard.CFrame
        end
    end
    
    if ProcGenGenerated:FindFirstChild("FactoryT") then
        if not ProcGenGenerated.FactoryT:FindFirstChild("Shard") then
            if not ProcGenGenerated.FactoryT.Shard:FindFirstChild("Shard") then
                ProcGenGenerated:FindFirstChild("FactoryT"):FindFirstChild("Shard"):Destroy()
            end
        end
        if ProcGenGenerated:FindFirstChild("FactoryT"):FindFirstChild("Shard") then

            local Shard = ProcGenGenerated.FactoryT:FindFirstChild("Shard").Shard
            local Character = game.Players.LocalPlayer.Character
            local HRP = Character.HumanoidRootPart
            print(HRP)

            HRP.CFrame = Shard.CFrame
        end
    end
    if ProcGenGenerated:FindFirstChild("MansionLootroom") then
        if ProcGenGenerated.MansionLootroom:FindFirstChild("Shard") then
            if not ProcGenGenerated.MansionLootroom.Shard:FindFirstChild("Shard") then
                ProcGenGenerated:FindFirstChild("MansionLootroom"):FindFirstChild("Shard"):Destroy()
            end
        end

        if ProcGenGenerated:FindFirstChild("MansionLootroom"):FindFirstChild("Shard") then
            local Shard = ProcGenGenerated.MansionLootroom:FindFirstChild("Shard").Shard
            local Character = game.Players.LocalPlayer.Character
            local HRP = Character.HumanoidRootPart
            print(HRP)

            HRP.CFrame = Shard.CFrame


        end
    end
     if ProcGenGenerated:FindFirstChild("FactoryOffice") then
        if ProcGenGenerated.FactoryOffice:FindFirstChild("Shard") then
            if not ProcGenGenerated.FactoryOffice.Shard:FindFirstChild("Shard") then
                ProcGenGenerated:FindFirstChild("FactoryOffice"):FindFirstChild("Shard"):Destroy()
            end
        end
        if ProcGenGenerated:FindFirstChild("FactoryOffice"):FindFirstChild("Shard") then
            local Shard = ProcGenGenerated.FactoryOffice:FindFirstChild("Shard").Shard
            local Character = game.Players.LocalPlayer.Character
            local HRP = Character.HumanoidRootPart
            print(HRP)

            HRP.CFrame = Shard.CFrame

        end
    end
end

function TeleportToElevator()
    local Map = workspace.PlacedTiles.Map:FindFirstChild("Map")

    local Character = game.Players.LocalPlayer.Character
    local HRP = Character.HumanoidRootPart

    HRP.CFrame = Map.CFrame
end

function DropItem()
    scrap_drop = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ScrapDrop")
    scrap_drop:FireServer()
end

function FarmAllOres()
    local items = workspace.ProcGenGenerated.ProcGenItems:GetChildren()
    if items ~= nil then
        print(items)
        for _, ore in pairs(items) do

            local player = game.Players.LocalPlayer
            local character = player.Character
            local backpack = player.Backpack

            TeleportToOre()
            print("1")
            task.wait(0.3)

            TeleportToSellStantion()
            print("2")

            task.wait(1)
        end
        return
    end
end



Section_Farm:NewButton("Teleport to Ore", "Teleport to Ore, PLEASE USE IT IN LOADED GAME", function()
    TeleportToOre()
end)

Section_Farm:NewButton("Teleport to Shard", "Teleport to Shard, PLEASE USE IT IN LOADED GAME", function()
    TeleportToShard()
end)

Section_Farm:NewButton("Teleport to Elevator", "Teleport to elevator, PLEASE USE IT IN LOADED GAME", function()
    TeleportToElevator()
end)

Section_Farm:NewButton("Farm all ores and sell them", "Farming all ores and tp it to elevator, PLEASE USE IT IN LOADED GAME", function()
    FarmAllOres()
end)

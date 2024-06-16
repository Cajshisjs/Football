local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "football rng", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
    Name = "Script",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local runningRonaldo = false
local runningMoney = false
local runningPlayerValue = false

Tab:AddToggle({
    Name = "get prime ronaldo rarest card",
    Default = false,
    Callback = function(Value)
        runningRonaldo = Value
        while runningRonaldo do
            local args = {
                [1] = "skibidi toilet sigma",
                [2] = game:GetService("ReplicatedStorage"):WaitForChild("Prime"):WaitForChild("Prime Ronaldo")
            }
            game:GetService("ReplicatedStorage"):WaitForChild("NewCardAdding"):FireServer(unpack(args))
            wait(0.01)  -- Extremely fast wait time
        end
    end
})

Tab:AddToggle({
    Name = "get money 🤑",
    Default = false,
    Callback = function(Value)
        runningMoney = Value
        while runningMoney do
            local args = {
                [1] = 9999999999
            }
            game:GetService("ReplicatedStorage"):WaitForChild("ClaimReward"):FireServer(unpack(args))
            wait(0.01)  -- Extremely fast wait time
        end
    end
})

Tab:AddToggle({
    Name = "get player value (don't go above 2.4t you will get detected)",
    Default = false,
    Callback = function(Value)
        runningPlayerValue = Value
        while runningPlayerValue do
            game:GetService('ReplicatedStorage'):FindFirstChild('PlayerValue'):FireServer(999999999)
            wait(0.01)  -- Extremely fast wait time
        end
    end
})

OrionLib:Init()

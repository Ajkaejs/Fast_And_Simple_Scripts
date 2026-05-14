local LightCoding = loadstring(game:HttpGet("https://raw.githubusercontent.com/AbobaLua/LightCoding/main/Source.lua"))()
local pfiretouchinterest = LightCoding.pfiretouchinterest
local gemNames = {"Diamond", "Emerald", "Ruby", "Sapphire"}
local connection = nil

function CollectGems()
    if connection then
        connection:Disconnect()
        connection = nil
        return
    end
    
    connection = game:GetService("RunService").Heartbeat:Connect(function()
        for _, gemName in ipairs(gemNames) do
            local gem = workspace:FindFirstChild(gemName)
            if gem then
                local touchPart = gem:FindFirstChild("TouchInterest")
                if touchPart then
                    pfiretouchinterest(touchPart)
                end
            end
        end
    end)
end

CollectGems()

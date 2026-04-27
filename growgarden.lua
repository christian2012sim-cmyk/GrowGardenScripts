-- Grow a Garden Token Script
-- Gives 10,000 tokens once the value is found

local player = game.Players.LocalPlayer

local function findTokenValue()
    for _, v in pairs(player:GetDescendants()) do
        if string.lower(v.Name) == "tokens" and v:IsA("NumberValue") then
            return v
        end
    end
    return nil
end

local tokenValue = nil

repeat
    tokenValue = findTokenValue()
    task.wait(0.2)
until tokenValue

tokenValue.Value = 10000
print("✔ Successfully set tokens to 10,000")

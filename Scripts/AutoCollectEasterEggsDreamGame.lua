local easterFolder = workspace.Easter.Every_Egg_Ever

if not easterFolder then
	return nil
end
local cureggs = 0
local function pfireclickd(path)
  local plr = game.Players.LocalPlayer
  local hrp = plr.Character and plr.Character:FindFirstChild("HumanoidRootPart")
    if not hrp then return end
    if path:IsA("ClickDetector") then
        local success, err = pcall(function()
            fireclickdetector(path)
        end)      
        if not success then return nil end
    end
end

local function setupClickDetectors(folder)
	for _, obj in ipairs(folder:GetChildren()) do
		local clickDetector = obj:FindFirstChildWhichIsA("ClickDetector")
		if clickDetector then
				pfireclickd(clickDetector)
            cureggs = cureggs + 1
            wait(0.00001)
		else
        return nil
		end
	end
end

setupClickDetectors(easterFolder)
print("Executing ClickDetector Complete!")
print("Success Complete", cureggs, "/ 100")

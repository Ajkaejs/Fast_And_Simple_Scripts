-- say (print)
function say(text)
  print(text)
end

-- warnmsg (warn)
function warnmsg(text)
  warn(text)
end

-- err (error)
function err(text, lvl)
  error(text, lvl)
end

-- erre (error only text(
function erre(text)
  error(text)
end

-- service (GetService)
function service(NameService)
  local service = game:GetService(NameService)
  return service
end

-- create (Instance)
function create(NameObject)
  local obj = Instance.new(NameObject)
  return obj
end

-- fireclickdetector
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

-- firetouchinterest
local function pfiretouchinteres(obj)
  local plr = game.Players.LocalPlayer
  local hrp = plr.Character and plr.Character:FindFirstChild("HumanoidRootPart")
  if not hrp then return end
  if obj:IsA("TouchTransmitter") then
  local succes, err = pcall(function()
    firetouchinterest(hrp, obj.Parent, 0)
    end)
    if not succes then return nil end
  end
end

-- fireproximitypromt
local function pfireproxpromt(obj)
  local plr = game.Players.LocalPlayer
  local hrp = plr.Character and plr.Character:FindFirstChild("HumanoidRootPart")
  if not hrp then return end
    if obj:IsA("ProximityPrompt") then
      local succes, err = pcall(function()
      fireproximityprompt(obj)
      end)
    if not succes then return nil end
  end
end

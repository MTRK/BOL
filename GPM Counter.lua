-- Gold tracker
-- only updates when you buy somthing ATM

local GoldA = 0
local GoldE = 0
local MaxValue = 475

function OnLoad()
print("GPM Tracker loaded.")

Menu = scriptConfig("Gold Tracker", "GOT")
end

function OnTick()
GoldA = myHero.gold
if GoldA < MaxValue then GoldE=((MaxValue-GoldA)+GoldE) MaxValue = math.floor(GoldA)
else MaxValue = math.floor(GoldA) 
  end
end

function OnDraw()

local time = GetGameTimer()
local GPM = math.floor(time / 60)

--[[Debuging
DrawText("GoldA = " ..  math.ceil(GoldA) ..".", 13, 10, 30, ARGB(255,255,255,255))
	DrawText("GoldE = " ..  GoldE ..".", 13, 25, 60, ARGB(255,255,255,255))
		DrawText("min = " ..  GPM ..".", 13, 40, 90, ARGB(255,255,255,255))
			DrawText("max = " ..  MaxValue ..".", 13, 40, 120, ARGB(255,255,255,255))
]]
--Draw GPM
DrawText("Your GPM is : " .. math.floor(GoldE/GPM) .. ".", 13, 10, 30, ARGB(255,255,255,255))
end

--[[	local clock = os.clock
function sleep(n) 
  while clock() - t0 <= n do end
end
end]]
local buthurt = {'Noob team plz report!', '1v1 me u cheeky cunt','G8 M8 i r8 U 8/8', 'Next time use some skill to kill me', 'wish my jungler would gank','FF@20 cannot carry this team'}
local rekt = {'HAHA, u r trash m8', 'L2P', 'Get fukin rekt m8', 'Can i carry this any harder?', '#LCSBIGPLAYS'}
local W33D = 'http://a.tumblr.com/tumblr_ludwiznKlm1qdse0to1.mp3'

function OnLoad()
PlayFile(W33D)
nextdelay = os.clock() + 35
nextdelay1 = os.clock() + 135
PrintChat("Get fukin rekt m8 1v1 me")
end

function OnTick()
if os.clock() > nextdelay and myHero.dead  then
SendChat("/all" .. buthurt[ math.random( #buthurt ) ] .. "!" )
nextdelay = os.clock() + 70 -- DELAY METHOD VERY IMPORTANT
end
 for i = 1, heroManager.iCount do
            local enemy = heroManager:GetHero(i)
            if os.clock() > nextdelay1 and enemy.dead then
            	SendChat("/all" .. rekt[ math.random( #rekt ) ] .. "!")
            	nextdelay1 = os.clock + 70
         local p = CLoLPacket(71)
		 p.pos = 1
		 p:EncodeF(myHero.networkID)
		 p:Encode1(2)
		 p:Encode1(0)
		 SendPacket(p)
end 
end

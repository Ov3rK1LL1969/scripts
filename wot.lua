getgenv().oilfarm = false
getgenv().bloodfarm = false
getgenv().mystfarm = false
getgenv().sorrowfarm = false
getgenv().nightfarm = false
getgenv().relicfarm = false
getgenv().flamingsteal = false
getgenv().mechanicalsteal = false
getgenv().heartysteal = false
getgenv().holysteal = false
getgenv().donatesteal = false
getgenv().killnight = false
getgenv().killcrazy = false



function easyTP(placeCFrame)
	local player = game.Players.LocalPlayer;
	if player.Character then
		player.Character.HumanoidRootPart.CFrame = placeCFrame
	end
end

function oilCup()
	spawn (function()
		if oilfarm == true then
			easyTP(game:GetService("Workspace").oil.delete.Parent.Handle.CFrame)
				wait()
		end
	end)
end

function bloodCup()
	spawn (function()
		if bloodfarm == true then
			easyTP(game:GetService("Workspace").blood.delete.Parent.Handle.CFrame)
				wait()
		end
	end)
end

function mystCup()
	spawn (function()
		if mystfarm == true then
			easyTP(game:GetService("Workspace")["mysterious cup"].delete.Parent.Handle.CFrame)
				wait()
		end
	end)
end

function nightEssence()
	spawn (function()
		if nightfarm == true then
			easyTP(game:GetService("Workspace")["nights essence"].delete.Parent.Handle.CFrame)
				wait()
		end  
	end)
end

function sorrowCup()
	spawn (function()
		if sorrowfarm == true then
			easyTP(game:GetService("Workspace")["sorrow cup"].delete.Parent.Handle.CFrame)
				wait()
		end
	end)
end

function tpForge()
    easyTP(game:GetService("Workspace")["The J"].Forging.anvil.Part.CFrame)
end

function tpNight()
	easyTP(game:GetService("Workspace")["The J"]["Night's anvil plate"].Part.CFrame)
end

function tpRiver()
	easyTP(game:GetService("Workspace")["The J"]["Red dimension"].HeartyFall.Red2.CFrame)
end

function tpUpgrade()
	easyTP(game:GetService("Workspace").upgrader.blood.a.CFrame)
end

function tradeCenter()
	easyTP(game:GetService("Workspace")["The J"]["Reworked_Trade_Center"].Teleport.CFrame)
end

function darkOrb()
	easyTP(game:GetService("Workspace")["The J"].OrbCrafter.Part.CFrame)
end

function uselessHole()
	easyTP(game:GetService("Workspace")["The J"]["The hole"].Part.CFrame)
end

function trader()
	easyTP(game:GetService("Workspace").gamebuildsthatdontchange["Red Tree"].RedTreePortal.CFrame)
end

function oilBase()
	easyTP(game:GetService("Workspace")["The J"]["Oil-manBase"].anvil.Part.CFrame)
end

function autokillNight()
	spawn(function()
		while getgenv().killnight == true do
			game:GetService("Workspace")["night crawler"].Humanoid.Health = 0
			wait(1)
		end
	end)
end

function autokillCrazy()
	spawn(function()
		while getgenv().killcrazy == true do
			game:GetService("Workspace")["crazy trollge"].Humanoid.Health = 0
			wait(1)
		end
	end)
end

function safeTP()
	easyTP(game:GetService("Workspace").kaboom.CFrame)
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/rodus", true))() -- put this first above everything (important!)

CreateMain("World of Trollge Ov3rK1LL#1969") -- example main

CreateTab("Autos") -- example tab
CreateTab("Tps")
CreateTab("Lessen Lag")

CreateToggle(tabs['Autos'], "Autofarm ALL", "This button is toggleable!",function() -- example toggle
            getgenv().oilfarm = toggled
			getgenv().bloodfarm = toggled
			getgenv().mystfarm = toggled
			getgenv().sorrowfarm = toggled
			getgenv().nightfarm = toggled
		while toggled == true do
		oilCup()
		wait(.1)
		bloodCup()
		wait(.1)
		mystCup()
		wait(.1)
		sorrowCup()
		wait(.1)
		nightEssence()
		wait(.1)
		safeTP()
	end
end)

CreateToggle(tabs['Autos'], "Autofarm Oil", "This button is toggleable!",function() -- example toggle
            getgenv().oilfarm = toggled
        while toggled == true do
            oilCup()
		wait(.3)
	end
end)

CreateToggle(tabs['Autos'], "Autofarm Blood", "This button is toggleable!",function() -- example toggle
            getgenv().bloodfarm = toggled
        while toggled == true do
            bloodCup()
		wait(.3)
	end
end)

CreateToggle(tabs['Autos'], "Autofarm Mysterious Cup", "This button is toggleable!",function() -- example toggle
            getgenv().mystfarm = toggled
        while toggled == true do
            mystCup()
		wait(.3)
	end
end)

CreateToggle(tabs['Autos'], "Autofarm Sorrow Cup", "This button is toggleable!",function() -- example toggle
            getgenv().sorrowfarm = toggled
        while toggled == true do
            sorrowCup()
		wait(.3)
	end
end)

CreateToggle(tabs['Autos'], "Autofarm Night Essence", "This button is toggleable!",function() -- example toggle
            getgenv().nightfarm = toggled
        while toggled == true do
            nightEssence()
		wait(.3)
	end
end)

CreateButton(tabs['Tps'], "Forge", "This button is clickable!",function() -- example button
    tpForge()
end)

CreateButton(tabs['Tps'],"Heart River", "teleports to the hearty river", function()
	tpRiver()
end)

CreateButton(tabs['Tps'],"Upgrader", "teleports to the upgrader", function()
	tpUpgrade()
end)

CreateButton(tabs['Tps'],"Trade Center", "teleports to the trade center", function()
	tradeCenter()
end)

CreateButton(tabs['Tps'],"Dark Orb Creator", "teleports to the dark orb creator", function()
	darkOrb()
end)

CreateButton(tabs['Tps'],"Night Essence Creator", "teleports to the night essence creator", function()
	tpNight()
end)

CreateButton(tabs['Tps'],"Useless Hole", "teleports to the useless hole", function()
	uselessHole()
end)

CreateButton(tabs['Tps'],"Trader (Tree)", "teleports to the tree trader place", function()
	trader()
end)

CreateButton(tabs['Tps'],"Oil Man Base", "teleports to oil boy base omg", function()
	oilBase()
end)


CreateButton(tabs['Lessen Lag'],"Delete Trees", "hmm i wonder", function()
	local tree = game:GetService("Workspace")["The J"].Trees
	tree:ClearAllChildren()
end)

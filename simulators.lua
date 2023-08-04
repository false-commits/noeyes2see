local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()


local Window = Rayfield:CreateWindow({
	Name = "[PART 2!] Tapping Legends",
	LoadingTitle = "Tapping Legends",
	LoadingSubtitle = "by SynWasHere pro valorant",
	ConfigurationSaving = {
		Enabled = false,
		FolderName = nil, -- Create a custom folder for your hub/game
		FileName = "Big Hub"
	},
	Discord = {
		Enabled = false,
		Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
		RememberJoins = true -- Set this to false to make them join the discord every time they load it up
	},
	KeySystem = false, -- Set this to true to use our key system
	KeySettings = {
		Title = "Untitled",
		Subtitle = "Key System",
		Note = "No method of obtaining the key is provided",
		FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
		SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
		GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
		Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
	}
})

local MainTab = Window:CreateTab("🏠 Auto Farm", nil) -- Title, Image
local MainSection = MainTab:CreateSection("Main")

local Button = MainTab:CreateButton({
	Name = "🖱️Fast Clicks🖱️",
	Callback = function()
		_G.enable = true;
		while _G.enable == true do
			game:GetService("ReplicatedStorage").Events.Click:FireServer()
			task.wait()
		end
	end,
})

local Button = MainTab:CreateButton({
	Name = "🌴Max World Boost🌴",
	Callback = function()
		_G.enable = true;
		while _G.enable == true do
			local ohString1 = "Summer"

			game:GetService("ReplicatedStorage").Events.SetWorldBoost:FireServer(ohString1)
			task.wait(1)
		end
	end,
})

local MiscTab = Window:CreateTab("🌎 Worlds", nil) -- Title, Image
local MiscSection = MiscTab:CreateSection("Misc")

local Button = MiscTab:CreateButton({
	Name = "‼️Secret World‼️",
	Callback = function()
		game:GetService("ReplicatedStorage").Events.Teleport:FireServer("Secret World")
	end,
})

local Button = MiscTab:CreateButton({
	Name = "🦕Jurassic World🦕",
	Callback = function()
		game:GetService("ReplicatedStorage").Events.Teleport:FireServer("Jurassic")
	end,
})
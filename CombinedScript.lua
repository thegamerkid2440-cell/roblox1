-- CombinedScript.lua
-- Put this Script in ServerScriptService

local Players = game:GetService("Players")

local function setupPlayer(player)
	print("Hello, " .. player.Name .. "!")

	player.CharacterAdded:Connect(function(character)
		print(player.Name .. " spawned.")
	end)
end

Players.PlayerAdded:Connect(setupPlayer)

for _, player in ipairs(Players:GetPlayers()) do
	setupPlayer(player)
end
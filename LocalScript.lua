local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Players = game:GetService("Players")

local player = Players.LocalPlayer

local notifyEvent = ReplicatedStorage:WaitForChild("NotifyEvent")


notifyEvent.OnClientEvent:Connect(function(message)
	
	game:GetService("StarterGui"):SetCore("SendNotification", {
		
		Title = "Notification";
		Text = message;
		Duration = 5;
	})
end)

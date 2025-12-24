local ReplicatedStorage = game:GetService("ReplicatedStorage")

local notifyEvent = ReplicatedStorage:FindFirstChild("NotifyEvent")
if not notifyEvent then
	notifyEvent = Instance.new("RemoteEvent")
	notifyEvent.Name = "NotifyEvent"
	notifyEvent.Parent = ReplicatedStorage	
end


local function sendNotification(player, message)
	notifyEvent:FireClient(player, message)
end



game.Players.PlayerAdded:Connect(function(player)
	player.Chatted:Connect(function(msg)
		local command, text = msg:match("^(%S+)%s*(.*)")
		if command and command:lower() == "/notify" and text ~="" then
			sendNotification(player, text)
		end
	end)
end)


Roblox command demonstrating a *notification*

## Scripts

### Local script 
- Recieves the notification events from the server and displays them to the user.

### ServerScripts
- Handles the "/notify" command and sends the notification to players


## How to use
1. Place 'NotificationServer.lua' in 'ServerScriptService'
2. Place 'LocalScript.lua' in 'StarterPlayerScripts'
3. Make sure 'NotifyEvent' exists in Replicated server or let the script create it automatically.
4. Play the game and type "/notify [message]"

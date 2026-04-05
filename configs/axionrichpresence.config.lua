RichPresenceConfig = {}



-- Set your Discord Application ID here. You can create an application and get the ID at https://discord.com/developers/applications
RichPresenceConfig.AppID = "APP_ID_HERE"

-- Set this to the text you want to show in the rich presence.
-- PLACEHOLDERS: You can use the following placeholders in the text:
-- {player} - The player's name
-- {playercount} - The current number of players on the server
-- {maxplayers} - The maximum number of players on the server
RichPresenceConfig.RichText = "{player} is playing on SERVER NAME | {playercount} of {maxplayers} players"

-- Set this to true if you want to show the LARGE asset in the rich presence. This will show a large image in the rich presence.
RichPresenceConfig.ShowLargeAsset = true

-- Set this to the name of your LARGE asset in the Discord Developer Portal (under Rich Presence -> Art Assets).
RichPresenceConfig.LargeAsset = "LARGE_ASSET_NAME"

-- Set this to the text you want to show when hovering over the LARGE asset in the rich presence.
RichPresenceConfig.LargeAssetText = "LARGE ASSET TEXT"

-- Set this to true if you want to show the SMALL asset in the rich presence. This will show a small icon next to the large asset.
RichPresenceConfig.ShowSmallAsset = true

-- Set this to the name of your SMALL asset in the Discord Developer Portal (under Rich Presence -> Art Assets).
RichPresenceConfig.SmallAsset = "SMALL_ASSET_NAME"

-- Set this to the text you want to show when hovering over the SMALL asset in the rich presence.
RichPresenceConfig.SmallAssetText = "SMALL ASSET TEXT"

-- Set this to true if you want to show the Discord button in the rich presence. This will show a button that opens your Discord server when clicked.
RichPresenceConfig.ShowDiscordButton = true

-- Set this to the invite link for your Discord server. This will be used for the Discord button in the rich presence.
RichPresenceConfig.DiscordInvite = "https://discord.gg/xxxxxxxxxx"

-- Set this to true if you want to show the join server button in the rich presence.
RichPresenceConfig.ShowServerButton = true

-- Set this to the invite link for your FiveM server. This will be used for the join server button in the rich presence.
RichPresenceConfig.ServerLink = "https://cfx.re/join/xxxxxx"
Config = {}

-- Language for the text players see. 'auto' follows ox_lib's language (setr ox:locale "de" in
-- server.cfg) and is English when that isn't set. Or name a file from locales/, such as 'de' or 'pt-br'.
Config.Locale = 'auto'

-- The commands. Use one next to someone to ask to carry them; use it again to put them down. The player
-- being carried can use either to get down.
Config.Commands = {
    carry = 'carry',            -- over the shoulder
    piggyback = 'piggyback',    -- on the back
}

-- Keys for answering a request. Players can change them in GTA's Settings -> Key Bindings -> FiveM.
-- Codes: https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
Config.AcceptKey = 'Y'
Config.DeclineKey = 'N'

-- How close, in metres, the other player has to be.
Config.Distance = 2.0

-- How long, in seconds, a request waits for an answer.
Config.RequestSeconds = 10

-- Names in messages. 'character' uses the character's name on Qbox, QBCore and ESX, and the player's
-- name anywhere else. 'player' always uses the player's FiveM name.
Config.Names = 'character'

-- How messages are shown.
-- 'auto' uses ox_lib notifications if ox_lib is running, otherwise GTA's notification feed.
-- 'ox_lib' or 'gta' to force one.
Config.Notifications = 'auto'

-- Update checks are controlled in server.cfg for every Pigeon Studios resource at once:
--     set pigeon_update_check "on"      (default)  |  "quiet"  |  "off"

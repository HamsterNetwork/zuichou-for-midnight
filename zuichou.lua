local text = require("text/zuichou")
local time = 0
local i = 1
local rid = 159775480
function OnFrame()
    players = player.get_hosts_queue()
    for x = 1,#players do
        if player.get_rid(players[x]) == rid then
            if time <= system.time() then
                utils.send_chat(text[i], false, players[x])
                i=i+1
                if i > #text then
                    i=1
                end
                time = system.time() + 3
            end
        end
    end
end

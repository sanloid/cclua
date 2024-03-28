rednet.open("top")

local chanel = "stars_mana_farm"
local startupArgs = {...}

function broadcast(message)
    rednet.broadcast(message, chanel)
end

while true do
    local message = {}

    message['command'] = "drop"
    message['args'] = {tonumber(startupArgs[1])}

    broadcast(message)
    sleep(tonumber(startupArgs[0]))

end

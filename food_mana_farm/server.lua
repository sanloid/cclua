rednet.open("top")

local chanel = "food_mana_farm"

function broadcast(message)
    rednet.broadcast(message, chanel)
end

while true do
    local message = {}

    message['command'] = "drop"
    message['args'] = {1}

    broadcast(message)
    sleep(3)

end

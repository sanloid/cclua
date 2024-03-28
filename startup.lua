rednet.open("left")

chanel = "stars_mana_farm"

while true do   
    id, message = rednet.receive(chanel);
    command = message['command'];
    args = message['args'];
    print(command, args)
end

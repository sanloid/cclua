rednet.open("left")

local chanel = "food_mana_farm"

while true do
    print('PORT: ', chanel)

    local id, message = rednet.receive(chanel);
    local command = message['command'];
    local args = unpack(message['args']);

    if command == "drop" then
        turtle.drop(args)
    end

    if command == "shell" then
        shell.run(args)
    end

    if command == "select" then
        turtle.select(args)
    end

    if command == 'change_port' then
        chanel = args
    end

    print(command, args)
end

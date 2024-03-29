arg = {...}

rednet.open("left")

while true do
    local res = turtle.suckDown(1)

    if res then
        turtle.dropDown(1)
    end

    if not (res) then
        rednet.send(tonumber(arg[1]), "drop")
    end

end

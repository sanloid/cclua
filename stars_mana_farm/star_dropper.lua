rednet.open("left")

while true do
    id, message = rednet.receive()
    print(id, message)
    turtle.drop(1)
end

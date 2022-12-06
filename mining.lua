--define minecraft block name
local gold = "minecraft:gold_ore" 
local iron = "minecraft:iron_ore" 
local coal = "minecraft:coal_ore" 
local redstone = "minecraft:redstone_ore" 
local lapis = "minecraft:lapis_ore"
local diamond = "minecraft:diamond_ore"

--inspectionBlock
function inspectBlock()
    local ret = false
    local success, data = turtle.inspect()  
    if (
        data["name"] == gold or 
        data["name"] == iron or 
        data["name"] == coal or 
        data["name"] == redstone or 
        data["name"] == lapis or 
        data["name"] == diamond
    ) then ret = true
    end
    return ret 
end


--function
function searchDig()
    if inspectBlock() then
    turtle.dig() 
    turtle.forward()

    for i = 1, 4 do
        if inspectBlock() then
            turtle.dig()
        end
        turtle.turnLeft()
    end
    turtle.back()
    end 
end

function main(down)
    local count = 0
    for i = 1, down do 
        local result = turtle.digDown() 
        if result == true then
            count = count + 1
        else 
            break
    end
    turtle.down() 
    for i = 1, 4 do
        searchDig()
        turtle.turnLeft()
    end 
    end
    return count - 1
end

function backToHome(up)
    for i = 1, up do
        turtle.up()
    end 
end

local args = {...} 
local n = args[1]

turtle.select(1) 
turtle.refuel()
local up = kaitenBori(n) backToHome(up)
for j = 1, 4 do 
    turtle.place() 
    turtle.turnLeft()
end
turtle.up() 
turtle.placeDown()

for i = 1, 16 do 
    turtle.select(i) 
    turtle.drop()
end

if inspectBlock then
    main()
end
os.loadAPI("h2touchpanel") 

local args = { ... } 
local receiverId = tonumber(args[1])
rednet.open("back")

function send(key)
    rednet.send(receiverId, key) 
end

--ここ簡略化できないか
local buttons = {}
buttons[1] = { name = "up", cmd = function() send('space') end } 
buttons[2] = { name = "forward", cmd = function() send('w') end }
buttons[3] = { name = "down", cmd = function() send('leftShift') end } 
buttons[4] = { name = "left", cmd = function() send('a') end } 
buttons[5] = { name = "back", cmd = function() send('s') end } 
buttons[6] = { name = "right", cmd = function() send('d') end } 
buttons[7] = { name = "turnLeft", cmd = function() send('left') end } 
buttons[8] = { name = "", cmd = function() send('') end }
buttons[9] = { name = "turnRight", cmd = function() send('right') end }


------------


local monitor = peripheral.wrap("right")
local option = { topPos = 1, bottomPos = 24 }
local panel = h2touchpanel.makePanel(buttons, 3, 3, monitor, option)

panel:draw()

term.clear()
-- コンピュータのモニターカーソル位置初期化
term.setCursorPos(1, 1) 
while true do
    local event, pushedButton = panel:pullButtonPushEvent() 
    pushedButton:run()
    panel:drawPushedButtonEffect(pushedButton, 0.5)
end
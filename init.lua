Input = 4
gpio.mode(3,gpio.OUTPUT)
dofile("switch.lua")
dofile("wificonfig.lua")
dofile("start.lua")
dofile("web.lua")
collectgarbage()

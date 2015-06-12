Input = 4
gpio.mode(3,gpio.OUTPUT)
function switch(lev)
gpio.write(3,lev)
end
dofile("wificonfig.lua")
collectgarbage();
dofile("start.lua")
collectgarbage();
dofile("web.lua")
collectgarbage();
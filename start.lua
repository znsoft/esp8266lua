tmr.alarm(0, 1000, 1, function ()
  local ip = wifi.sta.getip()
  if ip then
    tmr.stop(0)
    print(ip)
  end
end)
gpio.mode(Input,gpio.INT,gpio.PULLUP)
gpio.trig(Input, "down",function (level)
     if level == 0 then 
        switch( 1 - gpio.read(3))
        print(gpio.read(3))
        tmr.delay(701000)
     end
  end)
  dofile("state.lua")

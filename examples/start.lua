tmr.alarm(0, 1000, 1, function ()
  local ip = wifi.sta.getip()
  if ip then
    tmr.stop(0)
    print(ip)
  end
end)
OutPin = 3
Input = 4
gpio.mode(OutPin,gpio.OUTPUT)
--gpio.mode(Input,gpio.INPUT,gpio.PULLUP)
gpio.mode(Input,gpio.INT,gpio.PULLUP)
 function pin1cb(level)
     if level == 0 then 
        tmr.delay(701000)
        gpio.write(OutPin, 1 - gpio.read(OutPin))
        print(gpio.read(OutPin))
     end
  end
    gpio.trig(Input, "down",pin1cb)
--buf = ""
--ip = "224.0.0.251"
--udp=net.createServer(net.UDP)
--udp:listen(5353, ip)
--udp:on("receive", function(con, pl) print("got data") end)

tmr.stop(0)
tmr.alarm(0, nummin*60*1000, 0, function ()
    switch(gpio.LOW)
mytimer = nil
end)
mytimer = tmr.time()+nummin*60
print("<html><h1>Set off is ok")
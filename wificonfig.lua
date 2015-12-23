wifi.setmode(wifi.STATIONAP)
wifi.ap.config({ssid="192.168.4.1",pwd="APpassword"})
wifi.sta.config("znlink","STApassword")
wifi.sta.autoconnect(1)
tmr.alarm(4, 3000, 1, function()
       if wifi.sta.getip() == nil then
       wifi.sta.connect()
       end
end)
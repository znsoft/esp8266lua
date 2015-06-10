wifi.setmode(wifi.STATIONAP)
wifi.ap.config({ssid="192.168.4.1",pwd="APpassword"})
wifi.sta.config("znlink","STApassword")
wifi.sta.autoconnect(1)
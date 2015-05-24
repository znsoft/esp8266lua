wifi.ap.config({ssid="192.168.4.1",pwd="87654321"})
OutPin = 4
Input = 3
gpio.mode(OutPin,gpio.OUTPUT)
gpio.mode(Input,gpio.INPUT)
buf = ""
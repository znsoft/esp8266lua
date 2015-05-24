buf = [==[<html><head>
<title>esp8266 uLua</title></head>
<body>
<h1> Hello.</h1><form src="/">Turn PIN1 <select name="pin" onchange="form.submit()">
<option]==].._on..[==[>ON</opton><option]==].._off..[==[>OFF</option></select></form><br>Bat =]==]..tostring(adc.readvdd33())..[==[ mV<br>
<form src="/" method="post"><p><b>Command</b></p><p><input type="text" name="CMD" value=""><Br></p><p><input type="submit"></p></form> 
<br>uptime ]==]..tostring(tmr.now()/1000000).." sec<br> gpio0,2="..tostring(gpio.read(3)).." , "..tostring(gpio.read(4))..[==[ 
<p>GPIO0 <a href="?pin=ON"><button>ON</button></a>&nbsp;<a href="?pin=OFF"><button>OFF</button></a></p>
</p> </body></html> ]==].."\000"
buf = "HTTP/1.1 200 OK\nServer: ESP8266\nContent-Type: text/html; charset=utf-8\nContent-Length: "..tostring(#buf).."\n\n"..buf

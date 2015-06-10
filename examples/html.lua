buf = [==[<html><head>
<style type="text/css">
button {
    margin:0;
    padding:0;
    height: 40%;
    width: 80%;
    font-size: 170%;
    font-weight: bold
}
</style>
<title>ON/OFF Light</title></head>
<body>
<<div> <a href="?pin=ON"><button>ON</button></a>
</div>
<div><a href="?pin=OFF"><button>OFF</button></a>
</div>
<div><a href="?pin=SWITCH"><button>SWITCH</button></a>
</div>
</p> </body></html> ]==].."\000"
buf = "HTTP/1.1 200 OK\nServer: ESP8266\nContent-Type: text/html; charset=utf-8\nContent-Length: "..tostring(#buf).."\n\n"..buf

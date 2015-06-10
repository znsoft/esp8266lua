GetFile = function (path, callback)
 if(file.open(path, "r")) then
 callback(file.read())
 file.close()
 return true
 end
end

HTTPAnswer = function ( answer)
    conn:send("HTTP/1.1 200 OK\nServer: ESP8266\nContent-Type: text/html; charset=utf-8\nContent-Length: "..tostring(#answer).."\n\n"..answer)
end       

HTTPFileAnswer = function (answer)    HTTPAnswer("<pre>"..answer.."</pre>") end       


local recv = function ()
    local _, _, method, pth = string.find(request or "", "([A-Z]+) /(.+) HTTP");
            if(pth == "ON")then
                gpio.write(OutPin, gpio.HIGH);
            elseif(pth == "OFF")then
                gpio.write(OutPin, gpio.LOW);
            elseif(pth == "LIST")then
                dofile("list.lua")
                conn:close()
                return
            end
            if(GetFile(pth, HTTPFileAnswer) ~= true) then
                 dofile("ONOFF.lua")
            end
      end
   recv() recv = nil
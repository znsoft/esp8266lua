local HTTPAnswer = function ( answer)
    print("HTTP/1.1 200 OK\nServer: ESP8266\nContent-Type: text/html; charset=utf-8\nContent-Length: "..tostring(#answer).."\n\n"..answer)
end  
          if(gpio.read(3)==1) then
            HTTPAnswer(GetFile("OFF.html"))
          else
            HTTPAnswer(GetFile("ON.html"))
          end  
          conn:close()
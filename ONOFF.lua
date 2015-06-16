HTTPAnswer = function ( answer)
    print("HTTP/1.1 200 OK\nServer: ESP8266\nContent-Type: text/html; charset=utf-8\nContent-Length: "..tostring(#answer).."\n\n"..answer)
end  
dofile("recvSET.lua")
if mytimer==nil then mytimer=0 end
          if(gpio.read(3)==1) then
            HTTPAnswer(GetFile("OFF.html")..tostring(mytimer-tmr.time()).."sec left </body></html>")
          else
            HTTPAnswer(GetFile("ON.html")..tostring(mytimer-tmr.time()).."sec left </body></html>")
          end  
if mytimer==0 then mytimer=nil end
conn:close()
HTTPAnswer = nil
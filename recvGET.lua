GetFile = function (path)
 if(path ~= nil and file.open(path, "r")) then
 local buf = file.read()
 file.close()
 return buf
 end
 return nil
end
     
local recv = function ()
     local _, _, method, pth = string.find(request or "", "([A-Z]+) /(.+) HTTP");
            if(pth == "ON")then
                gpio.write(OutPin, gpio.HIGH);
            elseif(pth == "OFF")then
                gpio.write(OutPin, gpio.LOW);
            elseif(pth == "LIST")then
                dofile("list.lua")
                return
            end
            fname = pth
            filecontent = GetFile(pth)
            if(filecontent == nil) then
                 dofile("ONOFF.lua")
                 else
                dofile("list.lua")
            end 
          end
   recv() recv = nil

dofile('getfile.lua')
local recv = function ()
local _, _, _, pth = string.find(request or "", "([A-Z]+) /(.+) HTTP");
    if(pth == "ON")then switch(1) elseif(pth == "OFF")then switch(0) elseif(pth == "LIST")then dofile("list.lua") return end
            fname = pth
            filecontent = GetFile(pth)
            if(filecontent == nil) then dofile("ONOFF.lua") else dofile("list.lua") end 
end
recv()
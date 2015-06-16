if pth == nil then return end
local _,_,cmd,fname = pth:find("(.+)/.*=?(d+)")
if (cmd=="RUN") then 
dofile(fname)
elseif (cmd=="SETOFF") then 
nummin = tonumber(fname)
dofile('sheduleOFF.lua')
elseif (cmd=="SETON") then 
nummin = tonumber(fname)
dofile('sheduleON.lua')
end
nummin=nil

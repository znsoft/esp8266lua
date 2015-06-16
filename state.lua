if file.open("laststate","r") then
local r = tonumber(file.read(1))
file.close()
if r==0 then switch(r) end
end
print("Started switch")
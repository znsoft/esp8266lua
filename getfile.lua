GetFile = function (path)
 if(path ~= nil and file.open(path, "r")) then
 local buf = file.read()
 file.close()
 return buf
 end
 return nil
end
    local buf = "<html>"
    if (fname == nil) or (filecontent == nil) then fname = ""; filecontent = "" 
    buf = buf.."free mem:"..node.heap().." bytes<br><br>"
     for k,v in pairs(file.list()) do buf = buf.."<a href='"..k.."'>"..k.."</a>  "..v.." bytes<br>"; end
     end
print(buf..[==[
<form action="UPLOAD" enctype="multipart/form-data" method="post"><p>File:<br>
<input type="text" name="filename" size="30" value="]==]..fname..[==[">
</p><textarea cols="99" rows="12" name="text">]==]..filecontent..[==[</textarea>
<div><input type="submit" value="Send">
</div></form>  ]==])
     fname = nil filecontent = nil
     conn:close()     
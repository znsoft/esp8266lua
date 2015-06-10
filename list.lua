local buf = "<html>free mem:"..node.heap().." bytes<br>"
for k,v in pairs(file.list()) do buf = buf.."<a href='"..k.."'>"..k.."</a> "..v.."<br>"; end
file.open("upload.html", "r")
HTTPAnswer(buf..file.read())
file.close()
buf = nil

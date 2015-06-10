srv=net.createServer(net.TCP,180) 
srv:listen(80,function(con) 
    node.output(function (str)
                        if (con~=nil) then
                        con:send(str)
                        end
                    end,1)
    con:on("receive", function(con,req)
        local method = string.sub(req, 1, 3)
             conn = con
             request = req
            if(method == "POS")then
                dofile("UPLOAD.lua")
            elseif (method == "GET") then
                dofile("recvGET.lua")
                GetFile = nil
                HTTPAnswer = nil
            else
                node.input(req) 
            end
             conn = nil
             request = nil
             collectgarbage();
      end)
    
    con:on("disconnection",function(con) 
        node.output(nil) 
      end)

end)

function startServer()
   sv=net.createServer(net.TCP, 180)
   sv:listen(23,   function(conn)
      print("Wifi console connected.")
   
      function s_output(str)
         if (conn~=nil)    then
            conn:send(str)
         end
      end
      node.output(s_output,0)

      conn:on("receive", function(conn, pl) 
         node.input(pl) 
         if (conn==nil)    then 
            print("conn is nil.") 
         end
      end)
      conn:on("disconnection",function(conn) 
         node.output(nil) 
      end)
   end)   
end

tmr.alarm(0, 1000, 1, function() 
   if wifi.sta.getip()=="0.0.0.0" then
      print("Connect AP, Waiting...") 
   else
      startServer()
      tmr.stop(0)
   end
end)

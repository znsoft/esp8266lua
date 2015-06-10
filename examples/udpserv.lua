srv=net.createServer(net.UDP,180) 
srv:listen(8080,
  function(conn) 
    conn:on("receive", 
      function(conn,request)
          if(request == "1")then
            gpio.write(OutPin, gpio.HIGH);
          elseif(request == "0")then
            gpio.write(OutPin, gpio.LOW);
          end
        conn:close();
        end
        collectgarbage();
      end)
  end)

srv=net.createServer(net.TCP,180) 
srv:listen(80,function(conn) 
         node.output(function (str)
                        if (conn~=nil)    then
                        conn:send(str)
                        end
                    end,0)

    conn:on("receive", function(conn,request)
        buf = ""
--        print(request)
        local _, _, method, path, vars = string.find(request, "([A-Z]+) (.+)?(.+) HTTP");
        if(method == nil)then 
          _, _, method, path = string.find(request, "([A-Z]+) (.+) HTTP"); 
        end
        if(method == nil)then 
         node.input(request) 
        else
          local _GET = {}
          if (vars ~= nil)then 
            for k, v in string.gmatch(vars, "(%w+)=(%w+)&*") do 
              _GET[k] = v 
            end 
          end
          _on,_off = "",""
          if(_GET.pin == "ON")then
            _on = " selected=true";
            gpio.write(OutPin, gpio.HIGH);
          elseif(_GET.pin == "OFF")then
            _off = " selected=\"true\"";
            gpio.write(OutPin, gpio.LOW);
          end
            dofile("html.lua")
        conn:send(buf)
        conn:close();
        end
        collectgarbage();
        --node.output(nil) 
      end)
    conn:on("disconnection",function(conn) 
        node.output(nil) 
      end)
  end)

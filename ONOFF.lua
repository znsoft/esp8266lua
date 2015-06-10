          if(gpio.read(OutPin)==1) then
            GetFile("OFF.html", HTTPAnswer)
          else
            GetFile("ON.html", HTTPAnswer)
          end  
          conn:close()
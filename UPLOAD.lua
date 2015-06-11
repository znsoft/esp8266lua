    print('Uploading...\n') 
    local _,_,boundary = request:find("boundary=([%S]+)");
    local x,y = request:find("\r\n\r\n");
    _POST = {}
    local name=""
    print(request)
    print('<br>'..node.heap())
    local r,u,t=file.fsinfo() print("<br>\r\nTotal : "..t.." bytes\r\nUsed  : "..u.." bytes\r\nRemain: "..r.." bytes\r\n") r=nil u=nil t=nil
    conn:close();
    conn = nil
    if (boundary ~= nil and x ~= nil) then
        boundary = "--" .. boundary
            while(true) do  
                tmr.wdclr()      
                request = request:sub(y)
                x,y,name = request:find('name="(%w+)"\r\n\r\n')
                if(name == nil) then break end
                request = request:sub(y)
                x,y = request:find(boundary)
                if(x == nil) then break end
                local val = request:sub(2,x-3)
                if(val == nil) then break end
                _POST[name] = val
            end 
     end       
    request = nil
    collectgarbage()
        

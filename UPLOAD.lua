    print('Uploading...\n')   
    local _,_,boundary = request:find("boundary=([%S]+)");
    local x,y = request:find("\r\n\r\n");
    local _POST = {}
    local name=""
    print(request)
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
                local val = request:sub(1,x-1)
                if(val == nil) then break end
                _POST[name] = val 
            end 
     end       
    request = nil
    if (_POST.filename ~= nil and _POST.text ~= nil) then
        file.remove(_POST.filename);
        file.open(_POST.filename, "w+")
        file.write(_POST.text)
        file.flush()
        file.close()
        print(_POST.filename..' Done!')   
        
    end
    _POST = nil name = nil
    print('<br>'..node.heap())
        print('</html>')   
        collectgarbage()
        conn:close();

 if (_POST.filename ~= nil and _POST.text ~= nil) then
        file.remove(_POST.filename);
        file.open(_POST.filename, "w")
        file.write(_POST.text)
        file.flush()
        file.close()
        print(_POST.filename..' Done!')   
    end
    _POST = nil
    collectgarbage()
unescape = function (s)
if (s == nil) then return nil; end
  local rt, i, len = "", 1, #s
  s = s:gsub('+', ' ')
  local j, xx = s:match('()%%(%x%x)', i)
  while j do
    rt = rt .. s:sub(i, j-1) .. string.char(tonumber(xx,16))
    i = j+3
    j, xx = s:match('()%%(%x%x)', i)
  end
  return rt .. s:sub(i)
end
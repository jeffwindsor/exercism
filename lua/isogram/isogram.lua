return function(s)
    cs = {}
    s = string.upper(s)
    for i = 1, #s do
        c = s:sub(i,i)
        if c == " " or c == "-" then c = c  --skip
        elseif cs[c] == nil then cs[c] = 1
        else return false
        end
    end
    return true
end

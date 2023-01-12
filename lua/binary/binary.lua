local function to_decimal(input)
    x = 0
    n = #input
    for i = 1, #input do
        c = input:sub(i,i)
        if     c == '1' then x = x + 2^(n - i) 
        elseif c == '0' then x = x + 0
        else return 0
        end
    end
    return x
end

return {
  to_decimal = to_decimal
}

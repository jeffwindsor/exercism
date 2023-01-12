local house = {}
local thes = {
            "house that Jack built"
            ,"malt\n"
            ,"rat\n"
            ,"cat\n"
            ,"dog\n"
            ,"cow with the crumpled horn\n"
            ,"maiden all forlorn\n"
            ,"man all tattered and torn\n"
            ,"priest all shaven and shorn\n"
            ,"rooster that crowed in the morn\n"
            ,"farmer sowing his corn\n"
            ,"horse and the hound and the horn\n"
        }
local thats = {
            "lay in"
            ,"ate"
            ,"killed"
            ,"worried"
            ,"tossed"
            ,"milked"
            ,"kissed"
            ,"married"
            ,"woke"
            ,"kept"
            ,"belonged to"
            ,""
        }

house.line = function(which, this_line)
    if this_line then 
        prefix = "This is" 
    else 
        prefix = "that " .. thats[which]
    end
    return prefix .. " the " .. thes[which]
end

house.verse = function(which)
    result = "."
    for i = 1, which do
        result = house.line(i, i == which) .. result
        end
    return result
end

house.recite = function()
    result = house.verse(1)
    for i = 2, #thes do
        result = result .. "\n" .. house.verse(i)
    end
    return result
end

return house

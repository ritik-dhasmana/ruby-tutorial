def substrings(str, dict)
    res = Hash.new(0);
    dict.each do |s|
        if str.include?s
            # puts res
            res[s] +=1;
        end
    end
    return res;
end


# dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


# puts substrings("below", dictionary)

def stock_picker(price)
    ans =0;
    min_val =1000000;
    day1 =0
    day2 =0;
    prev=0;
    price.each_with_index{
        |p,ind|
        # puts ind;
        if ans < p -min_val
            
            ans = p-min_val
            day1 = prev
            day2 = ind
        end
        if p < min_val
            min_val = p
            prev = ind
        end
    }
    # puts day1
    return [day1, day2];
end
# puts stock_picker([17,3,6,9,15,8,6,1,10])




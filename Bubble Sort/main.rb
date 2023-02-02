

def bubble_sort(arr)
    
    for i in 0...arr.length
        for j in 0...(arr.length-1-i)
            if arr[j] > arr[j+1]
                t = arr[j]
                arr[j] = arr[j+1]
                arr[j+1]=t
            end
        end 
    end 
    return arr;
end


# puts bubble_sort([4,3,78,2,0,2])
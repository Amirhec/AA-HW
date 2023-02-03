def biggest_fish(arr)
    longest = ""
    i = 0  
        while  i < arr.length
                j = 0
                    while j < arr.length
                        if arr[i].length > arr[j].length 
                            longest = arr[i]
                        end
                        j+=1
                    end
            i+=1
        end

        return longest

end




def slow_dance(direction, tiles_array)
    i = 0
        while i < tiles_array.length
            if tiles_array[i] == direction
                return i 
            end
            i+=1
        end
end


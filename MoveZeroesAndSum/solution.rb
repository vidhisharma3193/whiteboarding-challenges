def move_zeroes(array)

    zeros = array.count(0)
    array.delete(0)

    zeros.times do
        array.push(0)
    end

    array
    
end

# array = [0, 1, 0, 3, 12]
# puts move_zeroes(array)

def two_sum(numbers, target)


    array = []

    numbers.each_with_index do |number_1, index_1|
        numbers.each_with_index do |number_2, index_2|
            if index_1 < index_2
                sum = number_1 + number_2
                if sum == target
                    array << {index1: index_1, index2: index_2}
                end
            end
        
        end
    end

    array
    


end

numbers = [2,3,7,11,15]
target = 18
puts two_sum(numbers,target)
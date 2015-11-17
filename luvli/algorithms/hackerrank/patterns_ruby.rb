def makeHash(anArray)
    return anArray.each.with_object(Hash.new(0)) { |h,v| h[v] += 1; h }
end

def anti_mode(num_array)
    discrepancy = num_array.inject do |memo, num|
        num_array.count(memo) >= num_array.count(num) ? num : memo
    end

    return discrepancy

end
def mode(num_array)
    most = num_array.inject do |memo, num|
        num_array.count(memo) >= num_array.count(num) ? memo : num
    end

    return most

end
#my testing:
#n = gets.to_i
#list = gets.strip.split.map {|i| i.to_i}
#list = [1, 3, 5, 9]

constant = 0
count = list.length
pattern = []

(0...count).each do |index|
    if index < (count - 1)
    pattern.push((list[index] - list[index+1]).abs)
    end
end

out = anti_mode(pattern)
index_for_i = pattern.index(4)
constant = mode(pattern)
new_number = list[index_for_i] + constant

list.insert((index_for_i + 1), new_number)

# insert value at getIndex

puts list

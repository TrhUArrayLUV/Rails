def itemToSum(index, list)
    return list[index].to_i
end

#receiving a matrix
n = gets.to_i
first = 0
second = 0

(0...n).each do |i|

    list = gets.strip.split
    element1 = itemToSum(i, list)
    first += element1

    element2 = itemToSum(i, list.reverse)
    second += element2
end

puts (first - second).abs

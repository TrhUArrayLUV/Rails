
# Complete the function below.


def  count_Squares(arr)

    arr.each do |n|
        squares = 0
        ary = n.strip.split
        range1 = ary[0].to_i
        range2 = ary[1].to_i

        (range1..range2).each do |i|
        square = i**0.5
        squares +=1 if (square - square.to_i) == 0
        end
        puts squares
    end

end
# both take to long
def  count_Squares(arr)

    arr.each do |n|
        squares = 0
        ary = n.strip.split(' ').map! {|i| i.to_i}
        range1 = ary[0]
        range2 = ary[1]
        s = 0.0
        (range1..range2).each { |i| s = i**0.5, squares +=1 if (square - square.to_i) == 0 }


        end
        puts squares
    end
end

# do inverse
def  count_Squares(arr)

    arr.each do |n|
        squares = 0
        ary = n.strip.split(' ').map! {|i| i.to_i}
        a = (ary[0]**0.5).ceil
        b = (ary[1]**0.5).floor
        puts (b - a) + 1
    end
end

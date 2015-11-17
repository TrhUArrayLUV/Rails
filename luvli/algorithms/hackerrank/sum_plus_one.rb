def sum_plus_one(n)
  sum = 0
  (1..n).each.reduce(:+)
end

#model solution
def sum_plus_one(n)
  sum = (n * (n+1))/2
end


def ary_difference(ary)
  # write your code in Ruby 2.2
    if ary.length == 1
        #ary[0] > (ary[1...ary.length].reduce(:+))
        puts ary[0].abs
    elsif ary.length <= 2
        puts (ary[0] - ary[1]).abs
    elsif ary[0] > (ary[1...ary.length].reduce(:+))
        puts (ary[0] - (ary[1...ary.length].reduce(:+))).abs
    else
        p = 0
        for i in (0...ary.length) do
            p = i
            break if ((ary[0..i]).reduce(:+)) > (ary[(i+1)...ary.length].reduce(:+))
        end
        puts p
        puts low = (((ary[0..p]).reduce(:+)) - (ary[(p+1)...ary.length].reduce(:+))).abs
        puts high = (((ary[0...p]).reduce(:+)) - (ary[p...ary.length].reduce(:+))).abs

        puts low > high ? high : low
     end
    


end

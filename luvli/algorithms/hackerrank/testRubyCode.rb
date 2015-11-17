# Complete the function below.
def makeHash(anArray)
   #chars.with_object({}) {|c,ob| ob[c] = s.count(c)} }
    return anArray.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
end

def passFirst(someHash)
  n = someHash.values
  n.each do |i|
    return i if i >= 1
  end
end

def  firstRepeatingLetter(s)
    s_array = s.strip.split(%r{\s*})
    l = makeHash(s_array)
    the_value = passFirst(l)

    return l.key(the_value)


end

def merge_sort(lst)
  if lst.length <= 1
    lst
  else
    mid = (lst.length / 2).floor
    left = merge_sort(lst[0..mid - 1])
    right = merge_sort(lst[mid..lst.length])
    merge(left, right)
  end
end

def merge(left, right)
  if left.empty?
    right
  elsif right.empty?
    left
  elsif left.first < right.first
    [left.first] + merge(left[1..left.length], right)
  else
    [right.first] + merge(left, right[1..right.length])
  end
end

def is_square(value, low, high)
  test = (low + high) / 2

end

def square_root(num)
  low = 0
  high = num
  while true
    squarable = ((low + high) / 2).to_i
      if squarable * squarable > num
        high = (squarable - 1).to_i
      elsif squarable * squarable < num
        return squarable if (squarable + 1) * (squarable + 1)  > num
        low = squarable + 1
      end
    end
  end
end

def equilibrium_index(a)
    # write your code in Ruby 2.2
    n = a.length
    
    return -1 if n <= 1

    for i in (1...a.length) do

      a_suf = (i + 1) >= a.length ? 0 : a[(i + 1)...a.length].reduce(:+)
      a_pre = a[0..(i - 1)].reduce(:+)
      return i if a_pre == a_suf

    end
    return -1
end

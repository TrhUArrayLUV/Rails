# Enter your code here. Read input from STDIN. Print output to STDOUT

def longest_palindrome(word)
    pal_count = 0
    longest = 0
    pal = ""
    low = 0
    (0...word.length).each do |i|
        if word[low..i] == word[low..i].reverse
            if word[low..i].length > longest
               longest = word[low..i].length
                pal = word[low..i]
            end
        end
    end
    p longest
    p pal
end
w = "cabbaccabbadd"
longest_palindrome(w)

def longest_palindrome(word)
  longest = 1
  palindrome = ""

  count = word.length.even? ? word.length : word.length + 1
  (1...count).each do |i|
    o = i-1
    while o >= 0
      suffix = word[i] == word[i + 1] ? word[(i + 1)..(i + (i-0))] : word[(i..(i + (i-0))]
      if word[(o - 1)..i] == suffix.reverse
        pal = word[(o -1)..(i + (i-0))]
        if pal.length > longest
          longest = pal.length
          palindrome = pal
        end

      else
        break
      end
      o -= 1
    end
  end
end

def longest_palindrome(word)
  longest = 1
  palindrome = ""

  count = word.length.even? ? 0.5 * word.length : 0.5 * (word.length + 1)
  (1...count).each do |i|
      origin = i -1
      while origin >= 0
          word[(origin)..i].reverse
          suffix = word[i] == word[i + 1] ? word[(i+1)..((i+1) + (i-origin))] : word[i..(i + (i-origin))]
        if word[(origin)..i].reverse == suffix
            pal = word[(origin)..i] + suffix
            if pal.length > longest
                longest = pal.length
                palindrome = pal
            end
        else
            break
        end
        origin -= 1
      end
  end
  puts longest
end
w = "eecabbaccabbacdd"
longest_palindrome(w)

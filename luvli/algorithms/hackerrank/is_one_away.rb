reservoir = []

def make_count(wordy)
    wordy.each_char.with_object(Hash.new(0)) { |c, h| h[c] +=1; h }

end

def one_away(ary)
  #will compare two strings to see if they are one edit away
    changes = 0
    a, b = ary[0], ary[1]
    return false if ary.empty? || (a.length - b.length).abs > 1
    # if replace char
    if a.length == b.length
        #refactor do for_loop with break if change > 1
        #binary search differences
        (0...a.length).each do |i|
            changes += 1 if a[i] != b[i]
        end
        return changes <= 1

    else
        #delete or add char scenario
        w = a + b
        s = make_count(w)
        rem = s.delete_if { |k, v| v%2 == 0 }
        k = rem.keys
        return false if k.length > 1
        w.delete!(k[0])
        puts w[0...(w.length/2)] == w[(w.length/2)...w.length]
    end


end
one_away(reservoir)

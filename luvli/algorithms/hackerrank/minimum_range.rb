def minimum_range(a_a, b_a, c_a)

    m = [a_a[0], b_a[0], c_a[0]].max - [a_a[0], b_a[0], c_a[0]].min
    initial = []
    i, j, k = 0, 0, 0

    while a_a.length > 0 && b_a.length > 0 && c_a.length > 0
       y = [a_a[i], b_a[j], c_a[k]].sort
       p current = y.max - y.min
       if current < m
            m = current
            p initial.pop
            p initial.push([a_a[i], b_a[j], c_a[k]])
        elsif current == m
            p initial.push([a_a[i], b_a[j], c_a[k]])
        end

       out = y.shift
        case out
            when a_a[i]
              break if i == a_a.length - 1
                p initial
                p y.push(a_a[i+1])
                p initial
                i +=1
            when b_a[j]
              break b_a.length - 1
                p y.push(b_a[j+1])
                j += 1
            when c_a[k]
              break k == c_a.length - 1
                p y.push(c_a[k+1])
                k += 1
            else
            p "nope"
        end
    end
    puts "m"
    p m
    puts "initial:"
    p initial
end

ae = [1, 2]
be = [3, 4]
ce = [5, 6]

minimum_range(ae, be, ce)

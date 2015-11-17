def maxSumRange(ary)
    ary.sort!
    maxSum = ary[0]
    aRange = []
    for i in 0...ary.length - 1 do

        if ary[i + 1] == ary[i].next
            aRange.push(ary[i]) if aRange.empty?
            aRange.push(ary[i+1])
            maxSum = aRange.reduce(:+) if aRange.reduce(:+) > maxSum
        else
            aRange = []
        end
    end
    puts maxSum
end

arr = [1]

maxSumRange(arr)

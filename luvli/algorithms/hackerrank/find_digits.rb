numeros = [150]



def  findDigitos(ary)
    ary.each do |n|
        to_string = (n.to_s).split(%r{\s*})

        now_ints = to_string.map {|i| i.to_i}
        now_ints.delete(0)

        digits = now_ints.find_all { |v|  n % v == 0 }
        puts digits.length

    end

end







findDigitos(numeros)
## new one by myself

tests = gets.to_i

tests.times do
    n = gets
    num = n.to_i
    digits = n.each_char.map { |d| d.to_i }
    digits.delete(0)
    some = digits.select { |d| num%d == 0 }
    puts some.length



end

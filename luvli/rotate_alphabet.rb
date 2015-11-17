def coded_alpha(a, c)
    pre = a.slice!(0...c)
    coded_alphabet = a + pre
end


count = gets.to_i
s = gets
code = gets.to_i
code = code%26 if code > 26
low = "abcdefghijklmnopqrstuvwxyz"
cap = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
key = coded_alpha(low, code) + coded_alpha(cap, code)


puts s.tr!("a-zA-Z", key)



def caesar_cipher(input, key)
    letters = ('a'..'z').to_a
    input.each_char.map { |c| letters.include?(c) ?
    letters[(letters.index(c)+key) % 26] : c }.join
end

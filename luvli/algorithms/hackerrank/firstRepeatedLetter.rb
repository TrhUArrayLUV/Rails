
def  firstRepeatingLetter(s)


    return s.each_char.find { |c| s.count(c) > 1 }


end

#iterate over object colors and return
def iterate_colors(effiyah_flows)
  # Your code here
    values = []
    effiyah_flows.each { |flow| values.push(flow) }

end


def skip_waves(waves, skip)
  # Your code here
    waves_array = []
    waves.each_with_index do |wave, index|
        waves_array.push("#{index}:#{wave}") if index >= skip
    end

    waves_array
end

#The easy way solution from http://straktor.github.io/hackerrank/ruby/enumerable/
def rot13(secret_messages)
    secret_messages.map { |char| char.tr('A-Za-z', 'N-ZA-Mn-za-m') }
end

def sum_terms(n)
  # your code here
    return 0 if n == 0
    terms = []
    (1..n).each { |nth| terms.push((nth**2) + 1) }
    terms.reduce(:+)

end

def func_any(hash)
    # Check and return if any key object within the hash is of the type Integer
    hash.any? { |key, value| key.is_a? Integer}
end

def func_all(hash)
    # Check and return if all the values within the hash are Integers and are < 10
    hash.all? { |key, value| (value.is_a? Integer) && value < 10 }
end

def func_none(hash)
    # Check and return if none of the values within the hash are nil
    hash.none? { |key, value| value.nil? }
end

def func_find(hash)
    # Check and return the first object that satisfies the property
    # [key, value] pair where the key is an Integer and the value is < 20
    # or [key, value] pair where the key is a String and the value is a String starting
    # with the character `a`
    hash.find { |key, value| ((key.kind_of? Integer) && ((value.kind_of? Integer) && value < 20)) || ((key.kind_of? String) && ((value.kind_of? String) && value[0] == "a")) }


end

def group_by_marks(marks, n)
  # your code here
    marks.group_by { |key, value| value < n ? "Failed" : "Passed" }
end

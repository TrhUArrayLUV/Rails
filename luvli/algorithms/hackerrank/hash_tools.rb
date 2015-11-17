
# Initialize 3 variables here as explained in the problem statement
empty_hash = {}
default_hash = Hash.new(1)
luvli = Hash.new
luvli = {"effi" => 144, "gnomi" =>24}

#iterate thru hash
def iterate_hash(hash)

    hash.each do  |key, value|
        puts key
        puts value
    end

end

#add object using store
luvli.store(2317, 15)

# retain if integer
luvli.keep_if { |key, value| key.is_a?Integer }

#remove if key is even-valued
luvli.delete_if { |key, value| key.even? }

#remove if value is odd-valued
luvli.delete_if { |key, value| value.odd? }

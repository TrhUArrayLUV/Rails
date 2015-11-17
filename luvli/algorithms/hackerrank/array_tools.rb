# Initialize
array = []

#with one nil value
array1 = Array.new(1)

#initialize with 2, 12's can be array2 = Array.new(2, 12) also
array2 = [12, 12]

#Indexes
def element_at(arr, index)
    # return the element of the Array variable `arr` at the position `index`
    # arr.at(index)
    arr[index]
end

def inclusive_range(arr, start_pos, end_pos)
    # return the elements of the Array variable `arr` between the start_pos and end_pos (both inclusive)
    arr[start_pos..end_pos]
end

def non_inclusive_range(arr, start_pos, end_pos)
    # return the elements of the Array variable `arr`, start_pos inclusive and end_pos exclusive
    arr[start_pos...end_pos]
end

def start_and_length(arr, start_pos, length)
    # return `length` elements of the Array variable `arr` starting from `start_pos`
    arr[start_pos, length]
end

#Adding
def end_arr_add(arr, element)
    # Add `element` to the end of the Array variable `arr` and return `arr`
    arr.push(element)
end

def begin_arr_add(arr, element)
    # Add `element` to the beginning of the Array variable `arr` and return `arr`
    arr.unshift(element)
end

def index_arr_add(arr, index, element)
    # Add `element` at position `index` to the Array variable `arr` and return `arr`
    arr.insert(index, element)
end

def index_arr_multiple_add(arr, index)
    # add any two elements to the arr at the index
    arr.insert(index, 28, 32)
end

#Delete
def end_arr_delete(arr)
    # delete the element from the end of the array and return the deleted element
    arr.pop

end

def start_arr_delete(arr)
    # delete the element at the beginning of the array and return the deleted element
    arr.shift

end

def delete_at_arr(arr, index)
    # delete the element at the position #index
    arr.delete_at(index)

end

def delete_all(arr, val)
    # delete all the elements of the array where element = val
    arr.delete(val)

end

#Selection
def select_arr(arr)
    # select and return all even numbers from the Array variable `arr`
    arr.select { |e| e.even? }
end

def reject_arr(arr)
    # reject all elements which are divisible by 5
    arr.reject { |e| e%5 == 0 }
end

def drop_some(arr, some_value)
  # removes elements till the block returns false for the first
  arr.drop_while {|a| a > some_value}

end

def delete_arr(arr)
    # delete all negative elements
    arr.delete_if { |e| e < 0 }
end

def keep_arr(arr)
    # keep all non negative elements ( >= 0)
    arr.keep_if { |e| e >= 0 }
end

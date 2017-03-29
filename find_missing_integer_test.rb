# You have an unsorted list of consecutive integers. One of   them is missing, find it. Write test cases for it.

def find_missing(array)
  array.max.times do |i|
    return i+1 unless array.include? i+1
  end
end

p find_missing([1, 2, 3, 4, 5, 6, 8, 9, 10, 11].shuffle) # => 7
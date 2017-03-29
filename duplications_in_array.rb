# Find the duplicates in an array.

def find_duplication(array)
  # array.group_by { |a| a }.map { |k, v| v.first if v.size > 1 }.compact

  # duplications = []
  # array.each do |el|
  #   if duplications.include?(el)
  #     duplications.delete(el)
  #   else
  #     duplications.push(el)
  #   end
  # end
  # (array - duplications).uniq

end

p find_duplication(['a', 'b', 'c', 4, '', :h, 'd', 'e', 'a', 'c', 1]) # => ['a', 'c']

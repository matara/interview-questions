# find the number of substrings which are palindrome
# Given string is palindrome or not(Inlace without using extra buffer)

def find_count_of_palindrome(str)
  count = 0
  words = []
  str.split(/\W/).each do |word|
    if word.downcase == word.downcase.reverse
      next if word.size < 2
      words.push word
      count += 1
    end
  end
  p words
  count
end

p find_count_of_palindrome('madam, where are you, on a racecar? or what? caac')

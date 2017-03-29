# Find first non-repeated character in a given string.  

def first_non_repeat_char(str)
  chars = []
  str.split('').each do |char|
    if chars.include? char
      chars.delete(char)
    else
      chars.push char
    end
  end
  chars.first
end

p first_non_repeat_char('aaaaKGlllKbb') # => G
# Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
# The brackets must close in the correct order, "()" and "()[]{}" are all valid but "(]" and "([)]" are not.

inputs = [
    '()[]{}',
    '(])[]{}',
    '(])[[]{}',
    '()[{}]',
    '([)]'
]

def is_valid?(str)
  stack = []
  str.split('').each do |char|
    if char == '('
      stack.push ')'
    elsif char == '['
      stack.push ']'
    elsif char == '{'
      stack.push '}'
    elsif stack.pop != char
      return false
    end
  end
  stack.size == 0
end

def print(str, result)
  puts ''
  puts "Input: '#{str}', is #{result ? 'valid' : 'not valid'}"
  puts ''
  puts '=' * 50
  puts ''
end

inputs.each do |input|
  print input, is_valid?(input)
end

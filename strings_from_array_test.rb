#  Given a string(for e.g.,abc) and an array of strings(s1,s2,....sn)
# return an array of boolean values based on if a string s1 can be made from the characters of string(abc)

def create_from_strings(sentence, array)
  array.map do |str|
    str.split('').all? {|char| sentence.include?(char)}
  end
end

p create_from_strings('ab cd ef gh', %w[bdg aaa ffgh b l lab]) # => [true, true, true, true, false, false]

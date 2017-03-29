def find_repeats(string, i)
  h = {}
  string.split('').each do |char|
    h[char] ||= 0
    h[char] += 1
  end
  result = []
  p h
  h.each do |k, v|
    result.push k if v >= i
  end
  result
end

p find_repeats('abcabcdddlsllkkkk', 3)
p find_repeats('abcabc', 3)

# Fizz-buzz type question

100.times do |i|
  j = i + 1
  if j % 15 == 0
    p 'FizzBuzz'
  elsif j % 3 == 0
    p 'Fizz'
  elsif j % 5 == 0
    p 'Buzz'
  else
    p j
  end
end

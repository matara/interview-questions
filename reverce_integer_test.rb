x = 1234567
y = 0

while x > 0 do
  y = y * 10
  y = y + (x%10)
  x = x/10
end

puts y
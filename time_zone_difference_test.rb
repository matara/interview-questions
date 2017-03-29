# Given a list of 24-hour clock time points in "Hour:Minutes" format,
# find the minimum minutes difference between any two time points in the list.
# Input: ["23:59","00:00"]
# Output: 1
def time_sting_to_integer(str)
  r = str.split(':')
  r = r[0].to_i * 60 + r[1].to_i
  r == 0 ? 1440 : r
end

def minutes(array)
  from = time_sting_to_integer array[0]
  to = time_sting_to_integer array[1]
  to - from
end

p minutes(['23:59', '00:00']) # => 1

p minutes(['21:00', '23:30']) # => 150
p minutes(['21:25', '23:30']) # => 125
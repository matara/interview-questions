def spiral_matrix(matrix)
  out = []
  a = matrix.map(&:dup)
  while a.any?
    out.concat(a.shift)
    a = rotate_anticlockwise(a)
  end
  out
end

def rotate_anticlockwise(arr)
  arr.map(&:reverse).transpose
end

matrix = [
    [1, 2, 3],
    [8, 9, 4],
    [7, 6, 5]
]
p spiral_matrix(matrix).join(', ') # => [1,2,3,4,5,6,7,8,9]

matrix = [
    [1, 2, 3, 4,],
    [12, 13, 14, 5,],
    [11, 16, 15, 6,],
    [10, 9, 8, 7,]
]

p spiral_matrix(matrix).join(', ') #=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]

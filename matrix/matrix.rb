# // --- Directions
# // Write a function that accepts an integer N
# // and returns a NxN spiral matrix.
# // --- Examples
# //   matrix(2)
# //     [[1, 2],
# //     [4, 3]]
# //   matrix(3)
# //     [[1, 2, 3],
# //     [8, 9, 4],
# //     [7, 6, 5]]
# //  matrix(4)
# //     [[1,   2,  3, 4],
# //     [12, 13, 14, 5],
# //     [11, 16, 15, 6],
# //     [10,  9,  8, 7]]
def matrix(n)
  Array.new(n, Array.new(n, n))
end

# p matrix(2)
p matrix(4)

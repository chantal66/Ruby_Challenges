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
def spiral(n)
  results = []
  n.times do
    results << []
  end
  results

  counter = 1
  start_column = 0
  end_column = n - 1
  start_row = 0
  end_row = n - 1

  while start_column <= end_column && start_row <= end_row
    # top row
    loop do
      i = start_column
      results[start_row][i] = counter
      counter += 1
    end
    start_row +=1
  end

  # right column



end


p spiral(4)


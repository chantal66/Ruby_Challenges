# // --- Directions
# // Given an integer, return an integer that is the reverse
# // ordering of numbers.
# // --- Examples
# //   reverseInt(15) === 51
# //   reverseInt(981) === 189
# //   reverseInt(500) === 5
# //   reverseInt(-15) === -51
# //   reverseInt(-90) === -9

def reverse_int(n)
  reversed = n.to_s.reverse.to_i

  if n < 0
    reversed * -1
  else
    reversed
  end
end

p reverse_int(15) === 51
p reverse_int(981) === 189
p reverse_int(500) === 5
p reverse_int(-15) === -51
p reverse_int(-90) === -9
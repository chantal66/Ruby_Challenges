# // --- Directions
# // Given an integer, return an integer that is the reverse
# // ordering of numbers.
# // --- Examples
# //   reverseInt(15) === 51
# //   reverseInt(981) === 189
# //   reverseInt(500) === 5
# //   reverseInt(-15) === -51
# //   reverseInt(-90) === -9

# def reverse_int(n)
#   reversed = n.to_s.reverse.to_i

#   if n < 0
#     reversed * -1
#   else
#     reversed
#   end
# end
def reverse_int(n)
  reversed = n.to_s.reverse.to_i

  if n < 0
    reversed * -1
  else
    reversed
  end
end


def reversed_str(str)
  str = str.downcase
  if str.length < 2
    str
  else
    str[-1] + reversed_str(str[1..-2]) + str[0]
  end
end

def reverse_int(n)

  number_to_s = n.to_s
  reversed_number = reversed_str(number_to_s).to_i
  if n < 0
    reversed_number * -1
  else
    reversed_number
  end
end




p reverse_int(15)
p reverse_int(981)
p reverse_int(500)
p reverse_int(-15)
p reverse_int(-90)
# Given a 32-bit signed integer, reverse digits of an integer.

#Assume we are dealing with an environment which could only
# hold integers within the 32-bit signed integer range.
# For the purpose of this problem, assume that
# your function returns 0 when the reversed integer overflows.

def reverse(x)
  reverse_int = x.to_s.reverse.to_i
  if reverse_int.bit_length >= 32
    0
  elsif x < 0
    reverse_int * -1
  else
    reverse_int
  end
end

p reverse(15)
p reverse(981)
p reverse(500)
p reverse(-15)
p reverse(-90)
p reverse(1534236469)
p reverse(1563847412)
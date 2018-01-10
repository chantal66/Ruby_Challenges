# reverse a string with pop
# def reverse_string(str)
#   splitted = str.downcase.split('')
#   reversed = []
#   splitted.size.times { reversed << splitted.pop }
#   reversed.join
# end


# # reverse a string with slice
# def reverse_string(str)
#  reversed = ''

#  str.each_char { reversed << str.slice!(-1)}

#  reversed
# end


# reverse a string with recursion
puts 'reversed string: '
def reverse_string(string)
  str = string.downcase

  if string.size < 2
    str
  else
    str[-1] + reverse_string(str[1..-2]) + str[0]
  end
end

p reverse_string('')
p reverse_string('a')
p reverse_string('ab')
p reverse_string('abcd')
p reverse_string('  abcd')
p reverse_string('hello!')

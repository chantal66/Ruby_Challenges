require 'pry'
# Given a string, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.

#For example,
#    "A man, a plan, a canal: Panama" is a palindrome.
#    "race a car" is not a palindrome.

# def is_palindrome(s)
#   s = s.downcase.tr(' .,:', '')
#   if s.length == 0 || s.length == 1
#     true
#   elsif s[0] == s[-1]
#     is_palindrome(s[1..-2])
#     true
#   else
#     false
#   end
# end

def is_palindrome(s)
  s = s.downcase.tr(" .,:;''`?!@#$%^&*--()\"\"", '')
  if s.length == 0 || s.length == 1
    true
  elsif s.reverse == s
    true
  else
    false
  end
end

p is_palindrome("A man, a plan, a canal: Panama")
p is_palindrome('race a car')
p is_palindrome('a.')
p is_palindrome('ab2a')
p is_palindrome('b2')
p is_palindrome('0P')
p is_palindrome('A man, a plan, a canal -- Panama')
p is_palindrome('Live on evasions? No, I save no evil.')
p is_palindrome("Marge, let's \"went.\" I await news telegram.")

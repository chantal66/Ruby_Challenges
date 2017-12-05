# // --- Directions
# // Given a string, return true if the string is a palindrome
# // or false if it is not.  Palindromes are strings that
# // form the same word if it is reversed. *Do* include spaces
# // and punctuation in determining if the string is a palindrome.
# // --- Examples:
# //   palindrome("abba") == true
# //   palindrome("abcdefg") == false

  def palindrome?(str)
    str = str.downcase
    if str == str.reverse
      true
    else
      false
    end
  end

a = 'abba'
b = 'abcdefg'
c = 'ww'
d = 'abba'
e = 'Never odd or even'
p palindrome?(a)
p palindrome?(b)
p palindrome?(c)
p palindrome?(d)
p palindrome?(e)
p palindrome?('Race fast safe car')
p palindrome?('1000000001')



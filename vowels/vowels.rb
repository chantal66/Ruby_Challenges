# // --- Directions
# // Write a function that returns the number of vowels
# // used in a string.  Vowels are the characters 'a', 'e'
# // 'i', 'o', and 'u'.
# // --- Examples
# //   vowels('Hi There!') --> 3
# //   vowels('Why do you ask?') --> 4
# //   vowels('Why?') --> 0
def counting_vowels(str)
  str = str.downcase
  str.count('aeiou')
end

def count_w_scan(str)
  str = str.downcase
  str.scan(/[aeiou]/).length

end

p counting_vowels('Hi There!')
p counting_vowels('Wh ydo you ask?')
p counting_vowels('Why?')

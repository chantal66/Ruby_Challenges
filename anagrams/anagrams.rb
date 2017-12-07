# // --- Directions
# // Check to see if two provided strings are anagrams of eachother.
# // One string is an anagram of another if it uses the same characters
# // in the same quantity. Only consider characters, not spaces
# // or punctuation.  Consider capital letters to be the same as lower case
# // --- Examples
# //   anagrams('rail safety', 'fairy tales') --> True
# //   anagrams('RAIL! SAFETY!', 'fairy tales') --> True
# //   anagrams('Hi there', 'Bye there') --> False

def anagrams(str1, str2)
  str1 = str1.downcase.tr(' !', '').split('').sort
  str2 = str2.downcase.tr(' !', '').split('').sort

  str1 == str2
end

p anagrams('rail safety', 'fairy tales')
p anagrams('RAIL! SAFETY!', 'fairy tales')
p anagrams('Hi there', 'Bye there')
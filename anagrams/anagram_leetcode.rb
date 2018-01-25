#Given two strings s and t, write a function to determine if t is an anagram of s.

#    For example,
#    s = "anagram", t = "nagaram", return true.
#    s = "rat", t = "car", return false.

#    Note:
#    You may assume the string contains only lowercase alphabets.

#    Follow up:
#    What if the inputs contain unicode characters? How would you adapt your solution to such case?

def valid_anagram(str1, str2)
  str1 = str1.split('').sort
  str2 = str2.split('').sort
  if str1 == '' && str2 == ''
    true
  else
    str1 == str2
  end
end

p valid_anagram('anagram', 'nagaram')
p valid_anagram('rat', 'car')
p valid_anagram('', '')
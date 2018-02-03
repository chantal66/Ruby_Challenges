# Challenge
#Using the Ruby language, have the function LetterChanges(str)
# take the str parameter being passed and modify it using the
# following algorithm. Replace every letter in the string with
# the letter following it in the alphabet (ie. c becomes d, z
# becomes a). Then capitalize every vowel in this new string
# (a, e, i, o, u) and finally return this modified string.
#     Sample Test Cases
#
# Input:"hello*3"
#
# Output:"Ifmmp*3"
#
# Input:"fun times!"
#
# Output:"gvO Ujnft!"

def letter_changes(str)
  h = ('a'..'z').to_a.each_with_object({}) do |c, h|
    h[c] = case c
             when 'z' then 'A'
             when 'd', 'h', 'n', 't' then c.next.upcase
             else c.next
           end
  end
  str.gsub(/[a-z]/, h)
end

p letter_changes('hello*3')
p letter_changes('fun times!')
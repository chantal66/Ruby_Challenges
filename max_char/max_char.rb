# // --- Directions
# // Given a string, return the character that is most
# // commonly used in the string.
# // --- Examples
# // maxChar("abcccccccd") === "c"
# // maxChar("apple 1231111") === "1"

def maxChar(str)
  chars = Hash.new(0)

  str.split('').each { |ch| chars[ch] += 1 }
  chars.max_by { |ch, count| count }[0]
end

p maxChar("abcccccccd")
p maxChar("apple 1231111")




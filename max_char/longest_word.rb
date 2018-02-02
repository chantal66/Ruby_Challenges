# Using the Ruby language, have the function LongestWord(sen)
# take the sen parameter being passed and return the largest word
# in the string. If there are two or more words that are the same
# length, return the first word from the string with that length.
# Ignore punctuation and assume sen will not be empty.

def longest_word(sen)
  sen = sen.tr('&!~:/[', '')
  sen.split(' ').max { |a,b| a.length <=> b.length }
end

p longest_word('fun&!! time')
p longest_word('I love dogs')
p longest_word('a confusing /:sentence:/[ this is not!!!!!!!~')
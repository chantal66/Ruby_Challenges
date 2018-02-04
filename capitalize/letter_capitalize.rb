#  Using the Ruby language, have the function LetterCapitalize(str)
# take the str parameter being passed and capitalize the first letter
# of each word.
# Words will be separated by only one space.

def letter_capitalize(str)
  str.split(' ').map { |word| word.capitalize }.join(' ')
end

p letter_capitalize('hello world')
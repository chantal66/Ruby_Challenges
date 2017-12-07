# // --- Directions
# // Write a function that accepts a string.  The function should
# // capitalize the first letter of each word in the string then
# // return the capitalized string.
# // --- Examples
# //   capitalize('a short sentence') --> 'A Short Sentence'
# //   capitalize('a lazy fox') --> 'A Lazy Fox'
# //   capitalize('look, it is working!') --> 'Look, It Is Working!'

# def capitalize(sentence)
#   sentence.split.map do |word|
#     word.capitalize
#   end.join(' ')
# end

def capitalize(sentence)
  sentence.split.map do |word|
    word[0].upcase + word[1..-1]
  end.join(' ')
end

p capitalize('a short sentence')
p capitalize('a lazy fox')
p capitalize('look, it is working')
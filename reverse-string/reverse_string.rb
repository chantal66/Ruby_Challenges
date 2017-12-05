# --- Directions
# Given a string, return a new string with the reversed
# order of characters
# --- Examples
#   reverse('apple') === 'leppa'
#  reverse('hello') === 'olleh'
#  reverse('Greetings!') === '!sgniteerG'
class ReverseString
  attr_reader :str

  def initialize(str)
    @str = str
  end

  # def reverse
  #   str.reverse
  # end

  def reverse
    reversed = []

    string = str.downcase.split('')

    string.size.times { reversed << string.pop }

    reversed.join('')
  end
end
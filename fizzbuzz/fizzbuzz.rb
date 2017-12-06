# // --- Directions
# // Write a program that console logs the numbers
# // from 1 to n. But for multiples of three print
# // “fizz” instead of the number and for the multiples
# // of five print “buzz”. For numbers which are multiples
# // of both three and five print “fizzbuzz”.
# // --- Example
# //   fizzBuzz(5);
# //   1
# //   2
# //   fizz
# //   4
# //   buzz
# def fizzbuzz(number)
#   (1..number).each do |num|
#     if num % 3 == 0 && num % 5 == 0
#       puts 'fizzbuzz'
#     elsif num % 3 == 0
#       puts 'fizz'
#     elsif num % 5 == 0
#       puts 'buzz'
#     else
#       puts num
#     end
#   end
# end

def fizzbuzz(number)
  (1..number).each do |num|
    puts case
      when num % 3 == 0 && num % 5 == 0 then 'fizzbuzz'
      when num % 3 == 0 then 'fizz'
      when num % 5 == 0 then 'buzz'
      else
        num
    end
  end
end

fizzbuzz(100)

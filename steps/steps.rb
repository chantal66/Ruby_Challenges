# // --- Directions
# // Write a function that accepts a positive number N.
# // The function should console log a step shape
# // with N levels using the # character.  Make sure the
# // step has spaces on the right hand side!
# // --- Examples
# //   steps(2)
# //       '# '
# //       '##'
# //   steps(3)
# //       '#  '
# //       '## '
# //       '###'
# //   steps(4)
# //       '#   '
# //       '##  '
# //       '### '
# //       '####'

def steps(num)
  n = 1
  while n <= num
    # if n == 1
    #   puts ('# ' * n).rjust(n)
    # else
      puts ('# ' * n)
    # end
    n += 1
  end
end

# p steps(2)
# p steps(4)
p steps(8)

def reverse_steps(n)
  while n >= 1
    puts '# ' * n
    n -= 1
  end
end

p reverse_steps(8)
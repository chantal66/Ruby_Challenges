# // --- Directions
# // Write a function that accepts a positive number N.
# // The function should console log a pyramid shape
# // with N levels using the # character.  Make sure the
# // pyramid has spaces on both the left *and* right hand sides
# // --- Examples
# //   pyramid(1)
# //       '#'
# //   pyramid(2)
# //       ' # '
# //       '###'
# //   pyramid(3)
# //       '  #  '
# //       ' ### '
# //       '#####'
def pyramid(height)
  height.times do |n|
    print ' ' * (height - n)
    puts '#' * (2 * n + 1) 
  end

end

pyramid(4)
# given an array of numbers return the sum of even numbers

arr = [1,2,3,4,5,6,7,8,9,10,12,13,15,16,28,40,51,55,56]

def even_numbers(arr)
  sum = 0
  arr.each do |n|
    if n.even?
      sum += n
    end
  end
  sum
end

p even_numbers(arr)
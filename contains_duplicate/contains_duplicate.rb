#Given an array of integers, find if the array contains any duplicates.
# #Your function should return true if any value appears at least twice in the array,
# and it should return false if every element is distinct.

def contains_duplicate(arr)
  chars_freq = Hash.new(0)
  arr.each { |char| chars_freq[char] += 1 }
  if chars_freq.values.max >= 2
    true
  else
    false
  end
end


p contains_duplicate([1,3,4,5,6,3,5,7,4,7,8,8])
p contains_duplicate([7,10,5,5,6,6,4,10,5,4,9,4,9,6,5,9,6,3,6,5,6,7,7,4,9,9,10,5,8,1,8,3,2,7,5,10,1,8,5,8,4,3,6,4,9,4,2,8,3,2,2,1,5,6,3,2,6,1,8,6,2,9,1,4,5,10,8,5,10,5,10,1,4,8,3,6,4,10,9,1,1,1,2,2,9,6,6,8,1,9,2,5,5,2,1,8,5,2,3,10])
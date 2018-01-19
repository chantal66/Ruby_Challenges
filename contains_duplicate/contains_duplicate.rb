#Given an array of integers, find if the array contains any duplicates.
# #Your function should return true if any value appears at least twice in the array,
# and it should return false if every element is distinct.

def contains_duplicate(arr)
  chars_freq = Hash.new(0)
  arr.each { |char| chars_freq[char] += 1 }
  if chars_freq.values.include? 2
    true
  else
    false
  end
end


p contains_duplicate([1,3,4,5,6,3,5,7,4,7,8,8])
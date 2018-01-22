#Given an array of integers, every element appears twice except for one. Find that single one.

def single_number(nums)
  chars_freq = Hash.new(0)
  nums.each { |char|  chars_freq[char] += 1 }
  chars_freq.min_by { |char, count| count }[0]
end

p single_number([1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 11, 11, 12, 12, 13, 13])
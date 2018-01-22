# Given nums = [1,1,2],

#Your function should return length = 2, with the first two elements of nums being 1 and 2 respectively.
#It doesn't matter what you leave beyond the new length.

def remove_duplicates(nums)
  nums.uniq!.length
end

p remove_duplicates([1,1,2])


# a longer solution

def remove_duplicates2(nums)
  chars_freq = Hash.new(0)
  nums.each { |char| chars_freq[char] += 1 }
  chars_freq.keys.length

end

p remove_duplicates2([1,1,2])

def remove_duplicates3(nums)
  nums.inject(Hash.new(0)) { |chars_freq, e| chars_freq[e] += 1; chars_freq }.keys.length
end

p remove_duplicates3([1,1,2])

def remove_duplicates4(nums)
  chars_freq = Hash.new
  nums.each_with_index { |num, index| chars_freq[num] = index }
  chars_freq.keys.size
end
p remove_duplicates4([1,1,2])

def remove_duplicates5(nums)
  size = nums.length
  return size if size <= 1
  last_value = nums[0]
  new_size = 1
  nums.each_with_index do |n, i|
    if i > 0 && n != last_value
      last_value = n
      nums[new_size] = n
      new_size += 1
    end
  end
  new_size
end

p remove_duplicates5([1,1,2])


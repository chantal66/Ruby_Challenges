require 'benchmark'

nums = [1,2,3,4,5,6]

def get_it(nums)
  num = nums.first
  nums.each do |n|
    num = n if n > num
  end
  num
end

def get_it2(nums)
  num = nums[0]
  nums.each do |n|
    num = n if n > num
  end
  num
end

def get_it3(nums)
  nums.max
end

def get_it4(nums)
  num = nums[0]
  for n in nums
    num = n if n > num
  end
  num
end

def get_it5(nums)
  num = nums[0]
  nums.size.times do |x|
    num = nums[x] if num < nums[x]
  end
end

Benchmark.measure do
  num = nums.first
  nums.each do |n|
    num = n if n > num
  end
  num
end


Benchmark.measure do
  num = nums[0]
  nums.each do |n|
    num = n if n > num
  end
  num
end

Benchmark.measure do
  nums.max
end

Benchmark.measure do
    num = nums[0]
  for n in nums
    num = n if n > num
  end
  num
end

Benchmark.measure do
  num = nums[0]
  nums.size.times do |x|
    num = nums[x] if num < nums[x]
  end
end


p get_it(nums)
p get_it2(nums)
p get_it3(nums)
p get_it4(nums)
p get_it5(nums)
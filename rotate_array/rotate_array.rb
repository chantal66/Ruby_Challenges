#Rotate an array of n elements to the right by k steps.

#For example, with n = 7 and k = 3, the array [1,2,3,4,5,6,7] is rotated to [5,6,7,1,2,3,4].


def rotate_array(n, k)
  (1..n).to_a.rotate(-k)
end

def rotate_array2(nums, k)
  for i in 1..k
    nums.push(nums.shift)
  end
  nums
end

def rotate_array3(nums, k)
  k.times { nums.unshift(nums.pop)}
end

p rotate_array(3, 2)
p rotate_array2([1,2,3], 1)
p rotate_array3([1,2,3], 1)

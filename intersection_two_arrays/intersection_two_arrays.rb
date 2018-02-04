#Given two arrays, write a function to compute their intersection.

#Example:
#Given nums1 = [1, 2, 2, 1], nums2 = [2, 2], return [2, 2].

def intersection_of_arrays(nums1, nums2)
  # nums1 = nums1.sort!
  # nums2 = nums2.sort!
  nums1 & nums2
end

p intersection_of_arrays([1, 2, 2, 1], [2, 2])
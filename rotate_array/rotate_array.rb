#Rotate an array of n elements to the right by k steps.

#For example, with n = 7 and k = 3, the array [1,2,3,4,5,6,7] is rotated to [5,6,7,1,2,3,4].


def rotate_array(n, k)
  (1..n).to_a.rotate(-k)
end

p rotate_array(7, 3)

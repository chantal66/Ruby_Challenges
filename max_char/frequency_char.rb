# my_string = "aacdefaaaabbccc";
# console.log(find_longest_repeat(my_string)); // should output 6
# my_string = "aaaaaaaaabbccdd";
# console.log(find_longest_repeat(my_string)); // should output 9
# my_string = "abcdd";
# console.log(find_longest_repeat(my_string)); // should output 3
# my_string = "abcde";
# console.log(find_longest_repeat(my_string)); // should output 0
# my_string = "";
# console.log(find_longest_repeat(my_string)); // should output None


def find_longest_repeat(string)
  max_freq = Hash.new(0)

  str = string.downcase

  str.split('').each { |char| max_freq[char] += 1 }
  if max_freq.empty?
    0
  else
    max_freq.max_by { |char, count| count }[1]
  end
end

p find_longest_repeat('aacdefaaaabbccc')
p find_longest_repeat('aaaaaaaaabbccdd')
p find_longest_repeat('abcdd')
p find_longest_repeat('abcde')
p find_longest_repeat('')
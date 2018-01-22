def longest_sentence(sentence)
  sentences = sentence.split(".")
  sentences.map do |sentence|
    sentence.split(' ').count
  end.max
end


p longest_sentence("We test coders. Give us a try?") # should return 4
p longest_sentence("Forget  CVs..Save time . x x") # should return 2

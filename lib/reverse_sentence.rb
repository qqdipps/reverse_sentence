# A method to reverse the words in a sentence, in place.
# Time complexity: O(n) where n is the number of elems in string.
# Space complexity: O(1)
def reverse_sentence(my_sentence)
  return if !my_sentence
  return unreverse_each_word(reverse_string(my_sentence))
end

def unreverse_each_word(my_words)
  left = 0
  my_words_length = my_words.length
  my_words_length.times do |i|
    if my_words[i] == " " || i == my_words_length - 1
      right = (i == (my_words_length - 1) ? i : i - 1)
      reverse_string(my_words, right, left)
      left = i + 1
    end
  end
  return my_words
end

def reverse_string(my_words, right = nil, left = 0)
  right ||= my_words.length - 1
  ((right + 1 - left) / 2).times do |j|
    temp = my_words[left + j]
    my_words[left + j] = my_words[right - j]
    my_words[right - j] = temp
  end
  return my_words
end

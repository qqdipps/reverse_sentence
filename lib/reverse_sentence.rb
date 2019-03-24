# A method to reverse the words in a sentence, in place.
# Time complexity: O(n) where n is the number of elems in string.
# Space complexity: O(n)
def reverse_sentence(my_sentence)
  return if !my_sentence
  return swap_order_of_words(my_sentence, split_on_space(my_sentence))
end

def split_on_space(my_sentence)
  left = 0
  arr = []
  my_sentence.length.times do |i|
    if my_sentence[i + 1] == " " || i == my_sentence.length - 1
      right = i
      arr << my_sentence[left..right]
      left = right + 2
    end
  end
  return arr
end

def swap_order_of_words(my_sentence, arr)
  l = 0
  arr.length.times do |i|
    arr[-i - 1].length.times do |j|
      my_sentence[l] = arr[-i - 1][j]
      l += 1
    end
    my_sentence[l] = " " unless i == arr.length - 1
    l += 1
  end
  return my_sentence
end

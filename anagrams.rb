
# O(n!)
# arr of arrays. O(n!) space
def first_anagram?(word1, word2)
  word1_perms = word1.chars.permutation.to_a

  word1_perms.each do |word|
    return true if word2 == word.join('')
  end
  false
end

# print first_anagram?("gizmo", "sally")

# quadradic O(n^2)
# space constant O(1)
# nothing new. uses two strings given
def second_anagram?(word1, word2)
  word1.each_char do |char1|
    word2.each_char do |char2|
      if char1 == char2
        word1.delete!(char1)
        word2.delete!(char2)
      end
    end
  end

  return true if word1.empty? && word2.empty?
  false
end

# print second_anagram?("elvis", "lives")

# quick sort uses linearithmic O(n log n)
# two arrays created for sorts
# quicksort space complexity
def third_anagram?(word1, word2)
  word1.chars.sort == word2.chars.sort
end

# print third_anagram?("elvis", "lives")
# O(n)
# creates two hashes
def fourth_anagram?(word1, word2)
  word1_count = Hash.new(0)
  word1.each_char do |char1|
    word1_count[char1] += 1
  end

  word2_count = Hash.new(0)
  word2.each_char do |char2|
    word2_count[char2] += 1
  end

  word1_count == word2_count
end

# print fourth_anagram?("elvis", "lives")
# 0(n) space/time
def fifth_anagram?(word1, word2)
  word_count = Hash.new(0)
  word1.each_char do |char1|
    word_count[char1] += 1
  end

  word2.each_char do |char2|
    word_count[char2] -= 1
  end

  word_count.values.all?(&:zero?)
end

# print fifth_anagram?("elvis", "lives")

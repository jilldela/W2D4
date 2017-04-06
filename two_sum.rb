# O(n^2) because worst case no target not found, itr through array 2x
# iteration
def bad_two_sum?(array, target)
  array.each_index do |idx1|
    array.each_index do |idx2|
      return true if array[idx1] + array[idx2] == target && idx1 != idx2
    end
  end

  false
end

# arr = [0, 1, 5, 7]
# p bad_two_sum?(arr, 6)

#
def okay_two_sum?(array, target)
  two_sum_hash = {}

  array.each do |el|
    two_sum_hash[el] = true
  end

  array.each do |el|
    num = target - el
    return true if two_sum_hash[num]
  end
  false
end

# arr = [0, 1, 5, 7]
# p okay_two_sum?(arr, 6)

def two_sum?(array, target)
  two_sum_hash = {}

  sorted.each do |el|
    two_sum_hash[el] = true
  end

  sorted.each do |el|
    num = target - el
    return true if two_sum_hash[num]
  end
  false
end

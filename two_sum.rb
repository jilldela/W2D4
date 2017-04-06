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

# TODO Firgure out sorted solution

# def okay_two_sum?(array, target)
#   finish = array.length - 1
#
#   array.each_index do |idx|
#     diff1 = target - array[idx]
#     diff2 = target - array[finish]
#
#     diff1 > array[finish]
#
#     diff2 > array[idx]
#
#     finish -= 1
#   end
# end

# arr = [0, 1, 5, 7]
# p okay_two_sum?(arr, 6)

def two_sum?(array, target)
  two_sum_hash = {} #O(1)

  array.each do |el| #O(n)
    two_sum_hash[el] = true
  end

  array.each do |el|  #O(n)
    num = target - el
    return true if two_sum_hash[num] #O(1)
  end
  false
end

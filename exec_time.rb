def my_min(list)
  min = list.first

  list.each_index do |i|
    list.each_index do |j|
      next if i == j
      min = list[i] if list[i] < min
      min = list[j] if list[j] < min
    end
  end

  min
end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)

def better_my_min(list)
  min = list.first

  list.each_index do |i|
    min = list[i] if list[i] < min
  end

  min
end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p better_my_min(list)

def bad_sub_sum(list)
  subs = []
  # O(n^2)
  list.each_index do |start|
    list.count.times do |finish|
      subs << list[start..finish] unless list[start..finish].count < 1
    end
  end
  #O(n^2)
  max = 0
  subs.each do |arr|
    total = arr.inject(:+)
    max = total if total > max
  end

  max
end

# list = [2, 3, -6, 7, -6, 7]
# p bad_sub_sum(list)

def good_sub_sum(list)
  # total = 0
  # max = 0
  #
  # list.each do |el|
  #   total += el
  #   max = total if max < total
  #   if max < el
  #     max = el
  #     total = el
  #   end
  # end
  #
  # max

  max = 0

  list.each do |el|
    max += el
    max = max > el ? max : el
  end

  max
end

list = [2, 3, -6, 7, -6, 7]
p good_sub_sum(list)

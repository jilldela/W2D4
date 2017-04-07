require_relative 'min_max_stack_queue'
require 'byebug'
# find largest (max - min) for each window_size

def windowed_max_range(array, window_size)
  current_max_range = nil
  i = 0
  max = array[0...window_size].max
  min = array[0...window_size].min
  current_max_range = max - min

  while i <= array.count - window_size
    max = array[i...i + window_size].max
    min = array[i...i + window_size].min
    current_max_range = max - min if current_max_range < max - min
    i += 1
  end
  current_max_range
end

# p windowed_max_range([1, 0, 2, 5, 4, 8], 2)  == 4 # 4, 8
# p windowed_max_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
# p windowed_max_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
# p windowed_max_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8

def best_window_max_range(array, window_size)
  mm_stack_queue = MinMaxStackQueue.new

  window = array.take(window_size)
  window.each do |el|
    mm_stack_queue.enqueue(el)
  end

  mm_stack_queue.max - mm_stack_queue.min
end

def merge_sort(array,sorted_array=[])
  if array.length == 1
    array
  else
    left = merge_sort(array[0...array.length / 2])
    right = merge_sort(array[array.length / 2..array.length])

    until left.empty? || right.empty?
      if left[0] < right[0]
        sorted_array << left.shift
      else
        sorted_array << right.shift
      end
    end

    if left.empty?
      sorted_array << right.shift until right.empty?
    end
    if right.empty?
      sorted_array << left.shift until left.empty?
    end

    sorted_array
  end
end

def rand_array(length)
  Array.new(length) { |item| rand(10) }
end

def test_merge_sort
  test = rand_array(10)
  puts "Original array: #{test}"
  puts "Sorted array: #{merge_sort(test)}"
end

def find_largest_smallest(arr)
  smallest = arr[0]
  largest = arr[0]

  arr.each do |num|
    smallest = num if num < smallest
    largest = num if num > largest
  end

  puts "smallest number = #{smallest}"
  puts "largest number = #{largest}"
end

numbers = [4, 2, 8, 5, 1]
find_largest_smallest(numbers) 
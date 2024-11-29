def count_duplicates(arr)
  counts = Hash.new(0) # Initialize a hash to store counts, defaulting to 0
  arr.each { |element| counts[element] += 1 } # Count occurrences of each element

  # Print elements with count > 1 (duplicates)
  counts.each do |element, count|
    puts "#{element} = #{count}" if count > 1
  end
end

# Example usage:
original_array = [4, 2, 2, 8, 5, 1, 2, 4]
count_duplicates(original_array) # Output: 2 = 3, 4 = 2

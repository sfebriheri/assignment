def remove_duplicates!(arr)
  arr.uniq! # Modifies the original array directly
end

# Example usage:
original_array = [4, 2, 2, 8, 5, 1, 2, 4]
remove_duplicates!(original_array) # original_array is modified
puts original_array.inspect # Output: [4, 2, 8, 5, 1]

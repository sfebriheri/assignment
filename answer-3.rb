def reverse_array!(arr)
  arr.reverse! # Modifies the original array directly
end

# Example usage:
original_array = [4, 2, 8, 5, 1]
reverse_array!(original_array) # original_array is modified
puts original_array.inspect # Output: [1, 5, 8, 2, 4]

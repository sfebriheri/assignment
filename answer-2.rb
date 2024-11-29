def fibonacci_sequence(n)
  sequence = [0, 1] # Initialize with the first two Fibonacci numbers

  # Generate the sequence up to n terms
  while sequence.length < n
    next_fib = sequence[-1] + sequence[-2] # Calculate the next Fibonacci number
    sequence << next_fib # Add it to the sequence
  end

  sequence # Return the sequence
end

# Example usage:
fib_numbers = fibonacci_sequence(10)
puts fib_numbers.inspect # Output: [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]

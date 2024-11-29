def print_triangle_patterns(rows)
  # Pattern 1: Right-angled triangle
  1.upto(rows) do |i|
    puts '*' * i
  end
  puts "\n" # Add an empty line between patterns

  # Pattern 2: Inverted right-angled triangle
  rows.downto(1) do |i|
    puts '*' * i
  end
  puts "\n"

  # Pattern 3: Mirrored right-angled triangle
  1.upto(rows) do |i|
    puts ' ' * (rows - i) + '*' * i
  end
  puts "\n"

  # Pattern 4: Isosceles triangle
  1.upto(rows) do |i|
    print ' ' * (rows - i)
    print '*' * (2 * i - 1)
    print "\n"
  end
end

# Example usage
print_triangle_patterns(5)

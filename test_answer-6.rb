require 'minitest/autorun'
require_relative 'answer-6' # Assuming answer-6.rb is in the same directory
require 'stringio'

class TestFindLargestSmallest < Minitest::Test
  def capture_stdout
    original_stdout = $stdout
    $stdout = StringIO.new
    yield
    $stdout.string
  ensure
    $stdout = original_stdout
  end

  def test_single_element_array
    input_array = [5]
    expected_output = "smallest number = 5\nlargest number = 5\n"
    actual_output = capture_stdout do
      find_largest_smallest(input_array)
    end
    assert_equal expected_output, actual_output
  end

  def test_positive_numbers
    input_array = [4, 2, 8, 5, 1]
    expected_output = "smallest number = 1\nlargest number = 8\n"
    actual_output = capture_stdout do
      find_largest_smallest(input_array)
    end
    assert_equal expected_output, actual_output
  end

  def test_negative_numbers
    input_array = [-4, -2, -8, -5, -1]
    expected_output = "smallest number = -8\nlargest number = -1\n"
    actual_output = capture_stdout do
      find_largest_smallest(input_array)
    end
    assert_equal expected_output, actual_output
  end

  def test_mixed_positive_and_negative_numbers
    input_array = [-4, 2, -8, 5, -1, 0]
    expected_output = "smallest number = -8\nlargest number = 5\n"
    actual_output = capture_stdout do
      find_largest_smallest(input_array)
    end
    assert_equal expected_output, actual_output
  end

  def test_array_with_duplicates
    input_array = [4, 2, 8, 2, 8, 1]
    expected_output = "smallest number = 1\nlargest number = 8\n"
    actual_output = capture_stdout do
      find_largest_smallest(input_array)
    end
    assert_equal expected_output, actual_output
  end
end

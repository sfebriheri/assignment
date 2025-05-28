require 'minitest/autorun'
require_relative 'answer-5' # Assuming answer-5.rb is in the same directory
require 'stringio'

class TestCountDuplicates < Minitest::Test
  def capture_stdout
    original_stdout = $stdout
    $stdout = StringIO.new
    yield
    $stdout.string
  ensure
    $stdout = original_stdout
  end

  def test_empty_array
    input_array = []
    expected_output = ""
    actual_output = capture_stdout do
      count_duplicates(input_array)
    end
    assert_equal expected_output, actual_output
  end

  def test_no_duplicates
    input_array = [1, 2, 3]
    expected_output = ""
    actual_output = capture_stdout do
      count_duplicates(input_array)
    end
    assert_equal expected_output, actual_output
  end

  def test_all_duplicates_one_element
    input_array = [1, 1, 1, 1]
    expected_output = "1 = 4\n"
    actual_output = capture_stdout do
      count_duplicates(input_array)
    end
    assert_equal expected_output, actual_output
  end

  def test_mixed_duplicates
    input_array = [1, 2, 1, 3, 2, 4, 2] # Duplicates: 1 (first), 2 (second)
    # Expected order based on first appearance in the original array
    # Counts: 1=>2, 2=>3, 3=>1, 4=>1
    # Iteration order of hash keys: 1, 2, 3, 4 (insertion order)
    # Output: 1=2, then 2=3
    expected_output = "1 = 2\n2 = 3\n"
    actual_output = capture_stdout do
      count_duplicates(input_array)
    end
    assert_equal expected_output, actual_output
  end

  def test_duplicates_with_strings
    input_array = ["a", "b", "a", "c", "a"] # Duplicate: "a"
    # Counts: "a"=>3, "b"=>1, "c"=>1
    # Iteration order: "a", "b", "c"
    # Output: "a"=3
    expected_output = "a = 3\n"
    actual_output = capture_stdout do
      count_duplicates(input_array)
    end
    assert_equal expected_output, actual_output
  end

  def test_duplicates_at_end
    input_array = [1, 2, 3, 3, 3] # Duplicate: 3
    expected_output = "3 = 3\n"
    actual_output = capture_stdout do
      count_duplicates(input_array)
    end
    assert_equal expected_output, actual_output
  end

  def test_different_order_of_first_duplicates
    input_array = [5, 5, 1, 2, 1, 3, 2, 4, 2] # Duplicates: 5 (first), 1 (second), 2 (third)
    # Counts: 5=>2, 1=>2, 2=>3, 3=>1, 4=>1
    # Iteration order: 5, 1, 2, 3, 4
    # Output: 5=2, 1=2, 2=3
    expected_output = "5 = 2\n1 = 2\n2 = 3\n"
    actual_output = capture_stdout do
      count_duplicates(input_array)
    end
    assert_equal expected_output, actual_output
  end
end

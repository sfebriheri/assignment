require 'minitest/autorun'
require_relative 'answer-4' # Assuming answer-4.rb is in the same directory

class TestRemoveDuplicates < Minitest::Test
  def test_empty_array
    input_array = []
    expected_output = []
    remove_duplicates!(input_array)
    assert_equal expected_output, input_array
  end

  def test_no_duplicates
    input_array = [1, 2, 3]
    expected_output = [1, 2, 3]
    remove_duplicates!(input_array)
    assert_equal expected_output, input_array
  end

  def test_all_duplicates
    input_array = [1, 1, 1, 1]
    expected_output = [1]
    remove_duplicates!(input_array)
    assert_equal expected_output, input_array
  end

  def test_mixed_duplicates
    input_array = [1, 2, 1, 3, 2, 4]
    expected_output = [1, 2, 3, 4]
    remove_duplicates!(input_array)
    assert_equal expected_output, input_array
  end

  def test_duplicates_at_beginning
    input_array = [1, 1, 2, 3]
    expected_output = [1, 2, 3]
    remove_duplicates!(input_array)
    assert_equal expected_output, input_array
  end

  def test_duplicates_at_end
    input_array = [1, 2, 3, 3]
    expected_output = [1, 2, 3]
    remove_duplicates!(input_array)
    assert_equal expected_output, input_array
  end

  def test_array_with_various_data_types
    input_array = ["a", 1, "a", :b, 1, "c", :b, :d]
    expected_output = ["a", 1, :b, "c", :d]
    remove_duplicates!(input_array)
    assert_equal expected_output, input_array
  end
end

require 'minitest/autorun'
require_relative 'answer-3' # Assuming answer-3.rb is in the same directory

class TestReverseArray < Minitest::Test
  def test_empty_array
    input_array = []
    expected_output = []
    reverse_array!(input_array)
    assert_equal expected_output, input_array
  end

  def test_single_element_array
    input_array = [1]
    expected_output = [1]
    reverse_array!(input_array)
    assert_equal expected_output, input_array
  end

  def test_even_length_array
    input_array = [1, 2, 3, 4]
    expected_output = [4, 3, 2, 1]
    reverse_array!(input_array)
    assert_equal expected_output, input_array
  end

  def test_odd_length_array
    input_array = [1, 2, 3, 4, 5]
    expected_output = [5, 4, 3, 2, 1]
    reverse_array!(input_array)
    assert_equal expected_output, input_array
  end

  def test_array_with_various_numbers
    input_array = [10, -2, 0, 5, -8]
    expected_output = [-8, 5, 0, -2, 10]
    reverse_array!(input_array)
    assert_equal expected_output, input_array
  end
end

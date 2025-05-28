require 'minitest/autorun'
require_relative 'answer-2' # Assuming answer-2.rb is in the same directory

class TestFibonacciSequence < Minitest::Test
  def test_zero_terms
    expected_output = [0, 1]
    assert_equal expected_output, fibonacci_sequence(0)
  end

  def test_one_term
    expected_output = [0, 1]
    assert_equal expected_output, fibonacci_sequence(1)
  end

  def test_two_terms
    expected_output = [0, 1]
    assert_equal expected_output, fibonacci_sequence(2)
  end

  def test_three_terms
    expected_output = [0, 1, 1]
    assert_equal expected_output, fibonacci_sequence(3)
  end

  def test_positive_terms
    expected_output = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
    assert_equal expected_output, fibonacci_sequence(10)
  end
end

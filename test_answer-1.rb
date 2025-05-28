require 'minitest/autorun'
require_relative 'answer-1' # Assuming answer-1.rb is in the same directory
require 'stringio'

class TestTrianglePatterns < Minitest::Test
  def capture_stdout
    original_stdout = $stdout
    $stdout = StringIO.new
    yield
    $stdout.string
  ensure
    $stdout = original_stdout
  end

  def test_triangle_output_with_3_rows
    expected_output = <<~EXPECTED
      *
      **
      ***

      ***
      **
      *

        *
       **
      ***

        *
       ***
      *****
    EXPECTED

    actual_output = capture_stdout do
      print_triangle_patterns(3)
    end
    assert_equal expected_output, actual_output
  end

  def test_triangle_output_with_1_row
    expected_output = <<~EXPECTED
      *

      *

      *

      *
    EXPECTED

    actual_output = capture_stdout do
      print_triangle_patterns(1)
    end
    assert_equal expected_output, actual_output
  end
end

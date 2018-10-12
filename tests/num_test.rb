require "minitest/autorun"
require_relative "../num_function.rb"

class TestNumeralConversion < Minitest::Test

    def test_assert_that_1_equals_1
        assert_equal(1, 1)
    end

    def test_that_numbers_change_to_numerals
        assert_equal("I", num_convert_one(1))
    end

end
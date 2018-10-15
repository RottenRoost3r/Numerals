require "minitest/autorun"
require_relative "../num_function.rb"

class TestNumeralConversion < Minitest::Test

    def test_assert_that_1_equals_1
        assert_equal(1, 1)
    end

    def test_that_result_is_string
        assert_equal(String, 1.romanizer().class)
    end

    def test_that_one_converts
        assert_equal("I", 1.romanizer())
        assert_equal("II", 2.romanizer())
        assert_equal("III", 3.romanizer())
    end

end
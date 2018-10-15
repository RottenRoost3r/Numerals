require "minitest/autorun"
require_relative "../num2_function.rb"

class TestNumberConversion < Minitest::Test

    def test_assert_that_1_equals_1
        assert_equal(1, 1)
    end

    def test_that_result_is_string
        assert_equal(Integer, "I".de_romanizer().class)
    end

    def test_that_1_converts
        assert_equal(1, "I".de_romanizer())
        # assert_equal(2, "II".de_romanizer())
        assert_equal(3, "III".de_romanizer())
    end

end

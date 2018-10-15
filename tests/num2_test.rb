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
        assert_equal(2, "II".de_romanizer())
        assert_equal(3, "III".de_romanizer())
    end

    def test_that_5_converts
        assert_equal(4, "IV".de_romanizer())
        assert_equal(5, "V".de_romanizer())
        assert_equal(6, "VI".de_romanizer())
    end

    def test_that_11_converts
        assert_equal(10, "X".de_romanizer())
        assert_equal(14, "XIV".de_romanizer())
        assert_equal(20, "XX".de_romanizer())
        assert_equal(40, "XL".de_romanizer())
    end
end

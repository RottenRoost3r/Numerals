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
        assert_equal(9, "IX".de_romanizer())
    end

    def test_that_11_converts
        assert_equal(10, "X".de_romanizer())
        assert_equal(14, "XIV".de_romanizer())
        assert_equal(20, "XX".de_romanizer())
        assert_equal(40, "XL".de_romanizer())
    end

    def test_that_50_converts
        assert_equal(50, "L".de_romanizer())
        assert_equal(52, "LII".de_romanizer())
        assert_equal(65, "LXV".de_romanizer())
        assert_equal(90, "XC".de_romanizer())
    end

    def test_that_100_converts
        assert_equal(100, "C".de_romanizer())
        assert_equal(124, "CXXIV".de_romanizer())
        assert_equal(140, "CXL".de_romanizer())
        assert_equal(400, "CD".de_romanizer())
    end

    def test_that_500_converts
        assert_equal(500, "D".de_romanizer())
        assert_equal(592, "DXCII".de_romanizer())
        assert_equal(900, "CM".de_romanizer())
    end

    def test_that_1000_converts
        assert_equal(1000, "M".de_romanizer())
        assert_equal(1022, "MXXII".de_romanizer())
    end

    def test_wild_random_numbers
        assert_equal(1949, "MCMXLIX".de_romanizer())
    end

end

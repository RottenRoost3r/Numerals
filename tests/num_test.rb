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

    def test_that_4_converts
        assert_equal("IV", 4.romanizer())
    end

    def test_that_5_converts
        assert_equal("V", 5.romanizer())
    end

    def test_that_6_converts
        assert_equal("VI", 6.romanizer())
        assert_equal("VII", 7.romanizer())
        assert_equal("VIII", 8.romanizer())
    end

    def test_that_9_converts
        assert_equal("IX", 9.romanizer())
    end

    def test_that_10_converts
        assert_equal("X", 10.romanizer())
        assert_equal("XV", 15.romanizer())
        assert_equal("XX", 20.romanizer())
    end

    def test_that_50_converts
        assert_equal("L", 50.romanizer())
        assert_equal("LI", 51.romanizer())
        assert_equal("LX", 60.romanizer())
    end

    def test_that_100_converts
        assert_equal("C", 100.romanizer())
    end
end
require "minitest/autorun"
require_relative "../num2_function.rb"

class TestNumberConversion < Minitest::Test

    def test_assert_that_1_equals_1
        assert_equal(1, 1)
    end

    def test_that_result_is_string
        assert_equal(String, "I".de_romanizer())
    end

end

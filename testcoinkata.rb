require "minitest/autorun"
require_relative "coinkata.rb"

class TestCoin < Minitest::Test

	def test_1_cents_returns_penny
        amount = 1
        results = coin_change(amount)
		assert_equal({:penny => 1}, results)
    end
    def test_11_cents_returns_1dime_1penny
        amount = 11
        results = coin_change(amount)
        assert_equal({:dime => 1, :penny => 1}, results)
    end
    def test_31_cents_returns_1quarter_1nickel_1penny
        amount = 31
        results = coin_change(amount)
        assert_equal({:quarter => 1, :nickel => 1, :penny => 1}, results)
    end
    def test_91_cents_returns_3quarter_1dime_1nickel_1penny
        amount = 92
        results = coin_change(amount)
        assert_equal({:quarter => 3, :dime => 1, :nickel => 1, :penny => 2}, results)
    end
end
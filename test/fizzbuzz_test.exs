defmodule FizzBuzzTest do
    use ExUnit.Case
    import Katas.FizzBuzz

    test "say word - fizz" do
        assert say_word(3) == "fizz"
    end

    test "say word - buzz" do
        assert say_word(5) == "buzz"
    end

    test "say word - fizzbuzz" do
        assert say_word(30) == "fizzbuzz"
    end

    test "say nothing otherwise" do
        assert say_word(1) == ""
        assert say_word(4) == ""
        assert say_word(8) == ""
    end

end
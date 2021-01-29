defmodule OddEventTest do
    use ExUnit.Case
    import Katas.OddEven

    test "if the sum is even" do
        assert odd_or_even([1, 1]) == Even
        assert odd_or_even([0]) == Even
        assert odd_or_even([1, 5, 4, 10]) == Even
    end

    test "if the sum is odd" do
        assert odd_or_even([1]) == Odd
        assert odd_or_even([3, 4]) == Odd
        assert odd_or_even([1, 4, 6, 3, 11]) == Odd
    end

end
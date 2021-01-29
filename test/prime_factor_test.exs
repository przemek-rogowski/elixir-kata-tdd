defmodule PrimeFactorTest do
    use ExUnit.Case
    import Katas.PrimeFactor

    test "smaller than 2 should return an empty list" do
        assert generate(1) == []
    end

    test "should return the prime factors" do
        assert generate(2) == [2]
        assert generate(3) == [3]
        assert generate(4) == [2, 2]
        assert generate(9) == [3, 3]
        assert generate(30) == [2, 3, 5]
        assert generate(100) == [2, 2, 5, 5]
    end

end
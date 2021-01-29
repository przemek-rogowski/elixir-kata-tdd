defmodule Katas.OddEven do
    @moduledoc """
    Given an array of numbers, determine whether the sum of all of the numbers is odd or even.
    """

    def odd_or_even(numbers) do
        case Enum.sum(numbers) do
            sum when rem(sum, 2) == 0 -> Even
            _ -> Odd
        end
    end

end
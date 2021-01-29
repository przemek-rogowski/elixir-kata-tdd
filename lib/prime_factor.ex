defmodule Katas.PrimeFactor do
    @moduledoc """
    Write a class named “PrimeFactors” that has one static method: generate.
    The generate method takes an integer argument and returns a List. That list contains the prime factors in numerical sequence.
    """

    def generate(number) when number < 2 do
        []
    end

    def generate(number) do
        factor = get_smallest_factor(number)
        [ factor ] ++ generate(div(number, factor))
    end

    defp get_smallest_factor(number, i \\ 2) do
        cond do
            rem(number, i) == 0 -> i
            true -> get_smallest_factor(number, i+1)
        end
    end

end
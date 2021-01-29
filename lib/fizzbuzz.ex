defmodule Katas.FizzBuzz do
    @moduledoc """
    FizzBuzz kata implementation.
    If the number is divisible by three, you say “Fizz” and if it is divisible by five you say “Buzz”.
    """

    def say_word(number) do
        cond do
            rem(number, 15) == 0 -> "fizzbuzz"
            rem(number, 3) == 0 -> "fizz"
            rem(number, 5) == 0 -> "buzz" 
            true -> ""
        end
    end

end
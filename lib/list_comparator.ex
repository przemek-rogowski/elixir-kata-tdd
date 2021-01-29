defmodule Katas.ListComparator do
    @moduledoc """
    You have two arrays in this kata, every array contains only unique elements. 
    Your task is to calculate the number of elements in the first array which are also in the second array.
    """

    def compare(firstList, secondList) do
        diffList = firstList -- secondList
        Enum.count(firstList -- diffList)
    end

end
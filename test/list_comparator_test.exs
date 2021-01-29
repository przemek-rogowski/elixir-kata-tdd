defmodule ListComparatorTest do
    use ExUnit.Case
    import Katas.ListComparator

    test "no similar elements for empty lists" do
        assert compare([], []) == 0
        assert compare([1, 2], []) == 0
        assert compare([], [:a, "b"]) == 0
    end

    test "if there are similar elements in the lists" do
        assert compare([:a], [:a]) == 1
        assert compare([1, 3], [4, 1, 8]) == 1
        assert compare([1, 3, :c], [4, 1, 8, :c]) == 2
        assert compare([1, 3, :c, :d], [1, :c]) == 2
    end

end
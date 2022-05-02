defmodule Chapter342Test do
  use ExUnit.Case
  doctest Chapter342

  test "greet list len" do
    assert Chapter342.list_len([1, 3, 4]) == 3
  end

  test "empty list len" do
    assert Chapter342.list_len([]) == 0
  end

  test "greet range" do
    assert Chapter342.range(1, 2) == [1, 2]
  end

  test "empty positive" do
    assert Chapter342.positive([]) == []
  end

  test "only negative" do
    assert Chapter342.positive([-1, -1, -1]) == []
  end

  test "positive and negative" do
    assert Chapter342.positive([-1, 2, 2, -3]) == [2, 2]
  end

  test "only posytive" do
    assert Chapter342.positive([1, 3, 4]) == [1, 3, 4]
  end
end

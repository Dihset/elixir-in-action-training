defmodule Chapter342 do
  @moduledoc """
  Documentation for `Chapter342`.
  """

  def list_len(str) do
    do_list_len(0, str)
  end

  defp do_list_len(value, [_ | tail]) do
    do_list_len(value + 1, tail)
  end

  defp do_list_len(value, []) do
    value
  end

  def range(from, to) when from < to do
    do_range(from, to, [])
  end

  defp do_range(from, to, list) when from <= to do
    do_range(from, to - 1, [to | list])
  end

  defp do_range(_, _, list) do
    list
  end

  def positive(list) do
    do_positive(list, [])
  end

  defp do_positive([head | tail], positive_list) when head >= 0 do
    do_positive(tail, positive_list ++ [head])
  end

  defp do_positive([head | tail], positive_list) when head < 0 do
    do_positive(tail, positive_list)
  end

  defp do_positive([], positive_list) do
    positive_list
  end
end

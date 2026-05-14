defmodule QuickSort do
  @moduledoc """
  Implementation of the Quick Sort algorithm in Elixir.
  """

  @doc """
  Sorts a list using the quick sort algorithm.

  ## Examples

      iex> QuickSort.sort([3, 1, 4, 1, 5, 9, 2, 6])
      [1, 1, 2, 3, 4, 5, 6, 9]

      iex> QuickSort.sort([])
      []

      iex> QuickSort.sort([1])
      [1]

  """
  @spec sort(list()) :: list()
  def sort([]), do: []
  def sort([pivot | rest]) do
    {smaller, larger} = Enum.split_with(rest, fn x -> x < pivot end)
    sort(smaller) ++ [pivot] ++ sort(larger)
  end
end

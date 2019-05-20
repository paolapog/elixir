defmodule Anagram do
  @doc """
  Returns all candidates that are anagrams of, but not equal to, 'base'.
  """
  @spec match(String.t(), [String.t()]) :: [String.t()]
  def match(base, candidates) do
    candidates
    |> Enum.filter(fn x -> split_reverse(base) == split_reverse(x) end)

  end

  def split_reverse(word) do
    word
    |> String.downcase()
    |> String.graphemes()
    |> Enum.sort()
  end


end

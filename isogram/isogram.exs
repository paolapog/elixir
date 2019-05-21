defmodule Isogram do
  @doc """
  Determines if a word or sentence is an isogram
  """
  @spec isogram?(String.t()) :: boolean
  def isogram?(sentence) do
    res =
      sentence
      |> String.replace(~r/[- ]/, "")
      |> String.graphemes()
      |> Enum.sort()


      Enum.uniq(res) == res
  end


end

defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
    sentence
    |> split_string()
    |> Enum.reduce(%{}, fn string, acc -> Map.update(acc, string, 1, &(&1 +1)) end)



  end

  def split_string(sentence) do
    sentence
    |> String.downcase()
    |> String.replace(~r/[!&@$%^:,]/ , "")
    |> String.split(~r/[\s_]/, trim: true)

  end


end

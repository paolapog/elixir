defmodule Acronym do
  @doc """
  Generate an acronym from a string.
  "This is a string" => "TIAS"
  """
  @spec abbreviate(String.t()) :: String.t()
  def abbreviate(string) do
    string
    |> string_split()
    |> Enum.reduce("", fn single_string, acc -> String.first(single_string) <> acc end)
    |> String.upcase()
    |> String.reverse()
  end

  def string_split(string) do
    string
    |> Macro.underscore()
    |> String.split(~r/[\s,-_]/, trim: true)

  end
end

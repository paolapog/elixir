defmodule Bob do
  def hey(input) do
    cond do
      silence(input) ->
        "Fine. Be that way!"
      shout_upcase(input) and question(input) ->
      "Calm down, I know what I'm doing!"
      shout_upcase(input) ->
        "Whoa, chill out!"
      question(input)  ->
        "Sure."
      true ->
      "Whatever."
    end
  end

  defp silence(input) do
    input
    |> String.trim()
    |> String.length == 0
  end

  defp question(input) do
    String.ends_with?(input, "?") == true
  end

  defp shout_upcase(input) do
    String.upcase(input) == input
  end


end

defmodule Roman do
  @doc """
  Convert the number to a roman number.
  """

  @romans [
  {1000, "M"},
  {900, "CM"},
  {600, "DC"},
  {500, "D"},
  {400, "CD"},
  {100, "C"},
  {90, "XC"},
  {50, "L"},
  {40, "XL"},
  {10, "X"},
   {9, "IX"},
   {5, "V"},
   {4, "IV"},
   {1, "I"},









 ]

  @spec numerals(pos_integer) :: String.t()

  def numerals(number) do
    numerals(@romans, "", number)
  end

  def numerals([], accumulator, _number), do: accumulator

  def numerals([{num, rom}| _tail] = list, accumulator , number) when number >= num do

    accumulator = accumulator <> rom

    numerals(list, accumulator, number - num)

  end

  def numerals([_head | tail], accumulator, number) do

    numerals(tail, accumulator, number)
  end



end

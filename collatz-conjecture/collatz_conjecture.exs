defmodule CollatzConjecture do

  @doc """
  calc/1 takes an integer and returns the number of steps required to get the
  number to 1 when following the rules:
    - if number is odd, multiply with 3 and add 1
    - if number is even, divide by 2
  """
  @spec calc(input :: pos_integer()) :: non_neg_integer()
  def calc(0), do: raise FunctionClauseError
  
  def calc(input), do: recursion(input, 0)

  def recursion(1 , acc), do: acc

  def recursion(input, acc) when rem(input, 2) == 0, do: recursion(div(input, 2), acc + 1)

  def recursion(input, acc) when rem(input, 2) == 1, do: recursion(input * 3 + 1, acc + 1)


end

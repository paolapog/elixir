defmodule Raindrops do


  @doc """
  Returns a string based on raindrop factors.

  - If the number contains 3 as a prime factor, output 'Pling'.
  - If the number contains 5 as a prime factor, output 'Plang'.
  - If the number contains 7 as a prime factor, output 'Plong'.
  - If the number does not contain 3, 5, or 7 as a prime factor,
    just pass the number's digits straight through.
  """
  @spec convert(pos_integer) :: String.t()

  def convert(number) when rem(number , 3) == 0 and rem(number, 5) == 0 and rem(number, 7) == 0, do: "PlingPlangPlong"
  def convert(number) when rem(number , 3) == 0 and rem(number, 5) == 0 , do: "PlingPlang"
  def convert(number) when rem(number , 3) == 0 and rem(number, 7) == 0 , do: "PlingPlong"
  def convert(number) when rem(number , 5) == 0 and rem(number, 7) == 0 , do: "PlangPlong"

  def convert(number) when rem(number , 3) == 0 , do: "Pling"
  def convert(number) when rem(number , 5) == 0 , do: "Plang"
  def convert(number) when rem(number , 7) == 0 , do: "Plong"
  def convert(_number), do: Integer.digits(_number) |> Enum.join

end


#DA FARE IL REFACTORING

defmodule Triangle do
  @type kind :: :equilateral | :isosceles | :scalene

  @doc """
  Return the kind of triangle of a triangle with 'a', 'b' and 'c' as lengths.
  """
  @spec kind(number, number, number) :: {:ok, kind} | {:error, String.t()}
  def kind(a, b, c) do
    cond do
      a == 0 or b == 0 or c == 0 ->
        {:error, "all side lengths must be positive"}
      a < 0 or b < 0 or c < 0 ->
         {:error, "all side lengths must be positive"}
      a + b <= c or b + c <= a or a + c <= b ->
        {:error, "side lengths violate triangle inequality"}
      a == b and b == c ->
        {:ok, :equilateral}
      a == b or b == c or a == c ->
        {:ok, :isosceles}
      a !== b and b !== c ->
        {:ok, :scalene}

    end
  end
end

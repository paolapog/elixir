defmodule Hamming do
  @doc """
  Returns number of differences between two strands of DNA, known as the Hamming Distance.

  ## Examples

  iex> Hamming.hamming_distance('AAGTCATA', 'TAGCGATC')
  {:ok, 4}
  """
  @spec hamming_distance([char], [char]) :: {:ok, non_neg_integer} | {:error, String.t()}
  def hamming_distance(strand1, strand2) do

    if length(strand1) > length(strand2) or length(strand1) < length(strand2), do: {:error, "Lists must be the same length"},
    else:
    recursion(strand1, strand2 , 0)
  end

  def recursion([], [], acc), do: {:ok, acc}

  def recursion([headone | tailone], [headsecond | tailsecond], acc) do

    # IO.inspect({headone, headsecond, acc})

    acc = if headone !== headsecond, do: acc + 1, else: acc

    recursion(tailone, tailsecond, acc)


  end



end

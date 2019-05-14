defmodule RNATranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RNATranscription.to_rna('ACTG')
  'UGAC'
  """

  @char %{
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }
  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    Map.get(@char, dna)
    |> to_charlist
    #ultimo test mancante
  end
end

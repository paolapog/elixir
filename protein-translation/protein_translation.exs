defmodule ProteinTranslation do
  @doc """
  Given an RNA string, return a list of proteins specified by codons, in order.
  """

  @strings %{
    "UGU" => "Cysteine",
    "UGC" => "Cysteine",
    "UUA" => "Leucine",
    "UUG" => "Leucine",
    "AUG" => "Methionine",
    "UUU" => "Phenylalanine",
    "UUC" => "Phenylalanine",
    "UCU" => "Serine",
    "UCC" => "Serine",
    "UCA" => "Serine",
    "UCG" => "Serine",
    "UGG" => "Tryptophan",
    "UAU" => "Tyrosine",
    "UAC" => "Tyrosine",
    "UAA" => "STOP",
    "UAG" => "STOP",
    "UGA" => "STOP"
  }




  @spec of_rna(String.t()) :: {atom, list(String.t())}
  def of_rna(rna) do

    keys = Map.keys(@strings)

    fetch = fetch_strings(rna)

    case Enum.all?(fetch, fn (x) -> x in keys end) do

      false ->
      {:error, "invalid RNA"}
      true ->
      valore = fetch
          |> Enum.map(fn valore -> Map.fetch!(@strings, valore) end)

        fine = Enum.find_index(valore, fn x -> x == "STOP" end)

      {:ok,
          Enum.slice(valore, 0,fine)
          |> Enum.uniq()
        }
    end



  end


  def fetch_strings(rna) do
    rna
    |> String.splitter("", trim: true)
    |> Enum.chunk_every(3)
    |> Enum.map(&Enum.join/1)


  end



  @doc """
  Given a codon, return the corresponding protein

  UGU -> Cysteine
  UGC -> Cysteine
  UUA -> Leucine
  UUG -> Leucine
  AUG -> Methionine
  UUU -> Phenylalanine
  UUC -> Phenylalanine
  UCU -> Serine
  UCC -> Serine
  UCA -> Serine
  UCG -> Serine
  UGG -> Tryptophan
  UAU -> Tyrosine
  UAC -> Tyrosine
  UAA -> STOP
  UAG -> STOP
  UGA -> STOP
  """
  @spec of_codon(String.t()) :: {atom, String.t()}
  def of_codon(codon) do
    fetch = Map.fetch(@strings, codon)

    if fetch !== codon do
      {:error, "invalid codon"}
    end
  end


end

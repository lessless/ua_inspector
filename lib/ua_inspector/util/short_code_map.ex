defmodule UAInspector.Util.ShortCodeMap do
  @moduledoc false

  @doc """
  Extracts the long version for a short code.
  """
  @spec to_long([{String.t(), String.t()}], String.t()) :: String.t()
  def to_long([], short), do: short
  def to_long([{short, long} | _], short), do: long
  def to_long([_ | rest], short), do: to_long(rest, short)

  @doc """
  Extracts the short version for an expanded short code.
  """
  @spec to_short([{String.t(), String.t()}], String.t()) :: String.t()
  def to_short([], long), do: long
  def to_short([{short, long} | _], long), do: short
  def to_short([_ | rest], long), do: to_short(rest, long)
end

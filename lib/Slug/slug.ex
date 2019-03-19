defmodule Slug do
  @moduledoc """
    `generate` creates a slug from a combination of id and string.
    `extract_id` grabs the id from  a slug.
  """
  @doc ~S"""

    ## Examples

      iex> Slug.generate(1337,"Lord Of The Rings")
      "lord-of-the-rings-1337"
      iex> Slug.extract_id("lord-of-the-rings-1337")
      1337
        
  """

  def generate(nil, nil), do: nil

  def generate(nil, _), do: nil
  def generate(_, nil), do: nil

  @spec generate(id :: integer, value :: any) :: String.t()
  def generate(id, value) do
    value =
      value
      |> String.downcase()
      |> String.replace(~r/[^a-z0-9\_ \s-]/, "")
      |> String.replace(~r/(\s|-)+/, "-")

    "#{value}-#{id}"
  end

  def extract_id(nil), do: nil

  @spec extract_id(String.t()) :: integer
  def extract_id(slug) do
    slug =
      slug
      |> String.split("-")
      |> Enum.take(-1)
      |> to_string

    try do
      String.to_integer(slug)
    rescue
      error ->
        IO.inspect(error)
        nil
    end
  end
end

# Slugs

`generate` creates a slug from a combination of two values, preferably a combination of an id and a descriptive string.

`extract_id` grabs the id from the slug.

https://hex.pm/packages/slugs
## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `slugs` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:slugs, "~> 0.1.0"}
  ]
end
```

## Usage

```elixir
iex> Slug.generate(1337,"Lord Of The Rings")
"lord-of-the-rings-1337"
iex> Slug.extract_id("lord-of-the-rings-1337")
"1337"
```
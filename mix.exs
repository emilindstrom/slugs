defmodule Slugs.MixProject do
  use Mix.Project

  def project do
    [
      app: :slugs,
      version: "0.1.1",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      description: description,
      package: package,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.19", only: :dev},
      {:earmark, "~> 1.1", only: :dev}
    ]
  end

  defp description do
    """
    creates a slug from a combination of id and string, also the other way around to grab the id from a slug.
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README.md"],
      maintainers: ["Emil Lindström"],
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub" => "https://github.com/emilindstrom/slugs",
        "Docs" => "https://hexdocs.pm/slugs/"
      }
    ]
  end
end

defmodule Exit.Mixfile do
  use Mix.Project

  def project do
    [app: :fitex,
     version: "0.0.1",
     elixir: "~> 1.0.0",
     description: "FitEx is a Macro-Module which provides a bit of sugar for function definitions.",
     package: package,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    []
  end

  defp package do
    [files: ["lib", "priv", "mix.exs", "README*", "readme*", "LICENSE*", "license*"],
     contributors: ["Tim de Putter"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/Puddah/FitEx"}]
  end
end

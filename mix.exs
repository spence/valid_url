defmodule ValidUrl.Mixfile do
  use Mix.Project

  def project do
    [app: :valid_url,
     version: "0.1.2",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     description: "Validate URL",
     files: ["lib", "src", "mix.exs", "README.md", "LICENSE"],
     package: package(),

     # Docs
     name: "ValidUrl",
     source_url: "https://github.com/spence/valid_url",
     docs: [main: "ValidUrl",
            extras: ["README.md"]]]
  end

  def package do
    [maintainers: ["Spencer Creasey <screasey@gmail.com>"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/spence/valid_url",
              "Docs" => "https://hexdocs.pm/valid_url"}]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [{:earmark, "~> 1.1", only: :dev},
     {:ex_doc, "~> 0.14", only: :dev}]
  end
end

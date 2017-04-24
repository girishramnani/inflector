defmodule Inflectorex.Mixfile do
  use Mix.Project

  def project do
    [app: :inflectorex,
     version: "0.1.2",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     package: package(),
     description: description()
    ]
  end

  def application do
    [extra_applications: [:logger],
    mod: {Inflectorex , []}]
  end

  defp deps do
    [{:ex_doc, ">= 0.0.0", only: :dev}]
  end

  defp description do 
    """
    Singularize and pluralize english nouns.
    """
  end

  defp package do
    [
     name: :inflectorex,
     files: ["lib", "mix.exs", "README*", "LICENSE*"],
     maintainers: ["Girish Ramnani"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/girishramnani/inflector" }
    ]
  end
end

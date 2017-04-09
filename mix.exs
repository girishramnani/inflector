defmodule Inflector.Mixfile do
  use Mix.Project

  def project do
    [app: :inflector,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     package: package(),
     description: description()
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger]]
  end

  defp deps do
    []
  end


  defp description do 
    """
    Singularize and pluralize english words.
    """
  end

  defp package do
    [
     name: :inflector,
     files: ["lib", "mix.exs", "README*", "readme*", "LICENSE*", "license*"],
     maintainers: ["Eric Meadows-Jönsson", "José Valim"],
     licenses: ["Apache 2.0"],
     links: %{"GitHub" => "https://github.com/ericmj/postgrex",
              "Docs" => "http://ericmj.github.io/postgrex/"}
    ]
  end
end

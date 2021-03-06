defmodule Citadel.Mixfile do
  use Mix.Project

  def project do
    [app: :citadel,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger],
     mod: {Citadel.Application, []}]
  end

  defp deps do
    [{:plumbus, github: "cookkkie/plumbus"},
     {:ex_hash_ring, "~> 1.0"},
     {:redix, "0.6.1"}]
  end
end

defmodule Baiji.Mixfile do
  use Mix.Project

  def project do
    [
      app: :baiji,
      version: "0.6.4",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps(),
      description: description(),
      package: package()
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
      {:poison, "~> 3.1.0"},
      {:httpoison, "~> 0.13.0"},
      {:timex, "~> 3.1"},
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  def description do
    "AWS API Library for Elixir"
  end

  def package do
    [
      name: "baiji",
      maintainers: ["Warren Kenny"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/wrren/baiji.ex"}
    ]
  end
end

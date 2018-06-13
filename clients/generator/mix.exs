defmodule Generator.MixProject do
  use Mix.Project

  def project do
    [
      app: :google_api_generator,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      escript: escript()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  def escript do
    [
      main_module: Generator.CLI,
      name: "gnostic-elixir-generator"
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:protobuf, "~> 0.5.3"},
      {:google_protos, "~> 0.1"}
    ]
  end
end

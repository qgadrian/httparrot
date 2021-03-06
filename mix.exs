defmodule Httparrot.Mixfile do
  use Mix.Project

  @description """
    HTTP Request & Response Server. An incomplete clone of http://httpbin.org
  """

  def project do
    [
      app: :httparrot,
      version: "1.2.0",
      elixir: "~> 1.7",
      name: "HTTParrot",
      description: @description,
      package: package(),
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {HTTParrot, []}
    ]
  end

  defp deps do
    [
      {:cowboy, "~> 2.8.0"},
      {:exjsx, "~> 3.0 or ~> 4.0"},
      {:con_cache, "~> 0.14.0"},
      {:ex_doc, "~> 0.14", only: :dev},
      {:meck, "~> 0.8.13", only: :test}
    ]
  end

  defp package do
    [
      maintainers: ["Eduardo Gurgel Pinho"],
      licenses: ["MIT"],
      links: %{
        "Github" => "https://github.com/edgurgel/httparrot",
        "HTTParrot" => "http://httparrot.herokuapp.com",
        "httpbin" => "http://httpbin.org"
      }
    ]
  end
end

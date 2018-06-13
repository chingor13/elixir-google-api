defmodule Generator.CLI do
  def main(args \\ []) do
    args
    |> parse_args
    |> run
  end

  defp parse_args(args, parsed \\ [])

  defp parse_args([], parsed) do
    parsed
  end
  defp parse_args(["-plugin" | _], _) do
    [input: :stdio, output: :stdio]
  end
  defp parse_args(["-input" | [input | rest]], parsed) do
    parse_args(rest, parsed ++ [input: input])
  end
  defp parse_args(["-output" | [output | rest]], parsed) do
    parse_args(rest, parsed ++ [output: output])
  end
  defp parse_args([_ | rest], parsed) do
    parse_args(rest, parsed)
  end

  def run([]) do
    IO.write """

    gnostic-elixir-generator is a gnostic plugin.

    When it is run from gnostic, the -plugin option is specified and gnostic
    writes a binary request to stdin and waits for a binary response on stdout.

    This program can also be run standalone using the other flags listed below.
    When the -plugin option is specified, these flags are ignored.

    Usage:
      -input string
            API description (in binary protocol buffer form)
      -output string
            Output file or directory (default "-")
      -plugin
            Run as a gnostic plugin (other flags are ignored).
    """
  end

  def run(args) do
    debug args

    input = Keyword.get(args, :input, :stdio)
    output = Keyword.get(args, :output, :stdio)

    request =
      input
      |> read_input
      |> Gnostic.Plugin.V1.Request.decode
      |> debug

    response =
      Gnostic.Plugin.V1.Response.new
      |> generate_code(request)

    response
    |> Gnostic.Plugin.V1.Response.encode
    |> write_output(output)
  end

  def generate_code(response, request) do
    Enum.reduce(request.models, response, &apply_model/2)
  end

  defp apply_model(%{type_url: "openapi.v2.Document", value: value}, response) do
    debug value
    model = Openapi.V2.Document.decode(value)
    |> debug
    debug response
  end

  defp debug(obj) do
    IO.inspect(:stderr, obj, [])
    obj
  end

  defp read_input(:stdio) do
    IO.read(:stdio, :all)
  end
  defp read_input(file) do
    file
    |> File.open!
    |> IO.read(:all)
  end

  defp write_output(data, :stdio) do
    IO.write(:stdio, data)
  end
  defp write_output(data, file) do
    file
    |> File.open!
    |> IO.write(data)
  end
end
alias OpenApi.V2.Model, as: OA

defimpl Jason.Encoder,
  for: [
    OA.Contact,
    OA.Definitions,
    OA.Example,
    OA.ExternalDocumentation,
    OA.Header,
    OA.Headers,
    OA.Info,
    OA.Items,
    OA.License,
    OA.Operation,
    OA.Parameter,
    OA.ParametersDefinitions,
    OA.PathItem,
    OA.Paths,
    OA.Reference,
    OA.Response,
    OA.ResponsesDefinitions,
    OA.Responses,
    OA.Schema,
    OA.Scopes,
    OA.SecurityDefinitions,
    OA.SecurityRequirement,
    OA.SecurityScheme,
    OA.Swagger,
    OA.Tag,
    OA.Xml
  ] do
  def encode(struct, opts) do
    struct
    |> Map.from_struct
    |> Enum.filter(fn {_k, v} -> v != nil end)
    |> Enum.into(%{})
    |> Jason.Encode.map(opts)
  end
end

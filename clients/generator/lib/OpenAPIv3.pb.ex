defmodule Openapi.V3.AdditionalPropertiesItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          oneof: {atom, any}
        }
  defstruct [:oneof]

  oneof :oneof, 0
  field :schema_or_reference, 1, type: Openapi.V3.SchemaOrReference, oneof: 0
  field :boolean, 2, type: :bool, oneof: 0
end

defmodule Openapi.V3.Any do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: Google.Protobuf.Any.t(),
          yaml: String.t()
        }
  defstruct [:value, :yaml]

  field :value, 1, type: Google.Protobuf.Any
  field :yaml, 2, type: :string
end

defmodule Openapi.V3.AnyOrExpression do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          oneof: {atom, any}
        }
  defstruct [:oneof]

  oneof :oneof, 0
  field :any, 1, type: Openapi.V3.Any, oneof: 0
  field :expression, 2, type: Openapi.V3.Expression, oneof: 0
end

defmodule Openapi.V3.AnysOrExpressions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          additional_properties: [Openapi.V3.NamedAnyOrExpression.t()]
        }
  defstruct [:additional_properties]

  field :additional_properties, 1, repeated: true, type: Openapi.V3.NamedAnyOrExpression
end

defmodule Openapi.V3.Callback do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          path: [Openapi.V3.NamedPathItem.t()],
          specification_extension: [Openapi.V3.NamedAny.t()]
        }
  defstruct [:path, :specification_extension]

  field :path, 1, repeated: true, type: Openapi.V3.NamedPathItem
  field :specification_extension, 2, repeated: true, type: Openapi.V3.NamedAny
end

defmodule Openapi.V3.CallbackOrReference do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          oneof: {atom, any}
        }
  defstruct [:oneof]

  oneof :oneof, 0
  field :callback, 1, type: Openapi.V3.Callback, oneof: 0
  field :reference, 2, type: Openapi.V3.Reference, oneof: 0
end

defmodule Openapi.V3.CallbacksOrReferences do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          additional_properties: [Openapi.V3.NamedCallbackOrReference.t()]
        }
  defstruct [:additional_properties]

  field :additional_properties, 1, repeated: true, type: Openapi.V3.NamedCallbackOrReference
end

defmodule Openapi.V3.Components do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          schemas: Openapi.V3.SchemasOrReferences.t(),
          responses: Openapi.V3.ResponsesOrReferences.t(),
          parameters: Openapi.V3.ParametersOrReferences.t(),
          examples: Openapi.V3.ExamplesOrReferences.t(),
          request_bodies: Openapi.V3.RequestBodiesOrReferences.t(),
          headers: Openapi.V3.HeadersOrReferences.t(),
          security_schemes: Openapi.V3.SecuritySchemesOrReferences.t(),
          links: Openapi.V3.LinksOrReferences.t(),
          callbacks: Openapi.V3.CallbacksOrReferences.t(),
          specification_extension: [Openapi.V3.NamedAny.t()]
        }
  defstruct [
    :schemas,
    :responses,
    :parameters,
    :examples,
    :request_bodies,
    :headers,
    :security_schemes,
    :links,
    :callbacks,
    :specification_extension
  ]

  field :schemas, 1, type: Openapi.V3.SchemasOrReferences
  field :responses, 2, type: Openapi.V3.ResponsesOrReferences
  field :parameters, 3, type: Openapi.V3.ParametersOrReferences
  field :examples, 4, type: Openapi.V3.ExamplesOrReferences
  field :request_bodies, 5, type: Openapi.V3.RequestBodiesOrReferences
  field :headers, 6, type: Openapi.V3.HeadersOrReferences
  field :security_schemes, 7, type: Openapi.V3.SecuritySchemesOrReferences
  field :links, 8, type: Openapi.V3.LinksOrReferences
  field :callbacks, 9, type: Openapi.V3.CallbacksOrReferences
  field :specification_extension, 10, repeated: true, type: Openapi.V3.NamedAny
end

defmodule Openapi.V3.Contact do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          url: String.t(),
          email: String.t(),
          specification_extension: [Openapi.V3.NamedAny.t()]
        }
  defstruct [:name, :url, :email, :specification_extension]

  field :name, 1, type: :string
  field :url, 2, type: :string
  field :email, 3, type: :string
  field :specification_extension, 4, repeated: true, type: Openapi.V3.NamedAny
end

defmodule Openapi.V3.DefaultType do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          oneof: {atom, any}
        }
  defstruct [:oneof]

  oneof :oneof, 0
  field :number, 1, type: :double, oneof: 0
  field :boolean, 2, type: :bool, oneof: 0
  field :string, 3, type: :string, oneof: 0
end

defmodule Openapi.V3.Discriminator do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          property_name: String.t(),
          mapping: Openapi.V3.Strings.t()
        }
  defstruct [:property_name, :mapping]

  field :property_name, 1, type: :string
  field :mapping, 2, type: Openapi.V3.Strings
end

defmodule Openapi.V3.Document do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          openapi: String.t(),
          info: Openapi.V3.Info.t(),
          servers: [Openapi.V3.Server.t()],
          paths: Openapi.V3.Paths.t(),
          components: Openapi.V3.Components.t(),
          security: [Openapi.V3.SecurityRequirement.t()],
          tags: [Openapi.V3.Tag.t()],
          external_docs: Openapi.V3.ExternalDocs.t(),
          specification_extension: [Openapi.V3.NamedAny.t()]
        }
  defstruct [
    :openapi,
    :info,
    :servers,
    :paths,
    :components,
    :security,
    :tags,
    :external_docs,
    :specification_extension
  ]

  field :openapi, 1, type: :string
  field :info, 2, type: Openapi.V3.Info
  field :servers, 3, repeated: true, type: Openapi.V3.Server
  field :paths, 4, type: Openapi.V3.Paths
  field :components, 5, type: Openapi.V3.Components
  field :security, 6, repeated: true, type: Openapi.V3.SecurityRequirement
  field :tags, 7, repeated: true, type: Openapi.V3.Tag
  field :external_docs, 8, type: Openapi.V3.ExternalDocs
  field :specification_extension, 9, repeated: true, type: Openapi.V3.NamedAny
end

defmodule Openapi.V3.Encoding do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          content_type: String.t(),
          headers: Openapi.V3.HeadersOrReferences.t(),
          style: String.t(),
          explode: boolean,
          allow_reserved: boolean,
          specification_extension: [Openapi.V3.NamedAny.t()]
        }
  defstruct [:content_type, :headers, :style, :explode, :allow_reserved, :specification_extension]

  field :content_type, 1, type: :string
  field :headers, 2, type: Openapi.V3.HeadersOrReferences
  field :style, 3, type: :string
  field :explode, 4, type: :bool
  field :allow_reserved, 5, type: :bool
  field :specification_extension, 6, repeated: true, type: Openapi.V3.NamedAny
end

defmodule Openapi.V3.Encodings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          additional_properties: [Openapi.V3.NamedEncoding.t()]
        }
  defstruct [:additional_properties]

  field :additional_properties, 1, repeated: true, type: Openapi.V3.NamedEncoding
end

defmodule Openapi.V3.Example do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          summary: String.t(),
          description: String.t(),
          value: Openapi.V3.Any.t(),
          external_value: String.t(),
          specification_extension: [Openapi.V3.NamedAny.t()]
        }
  defstruct [:summary, :description, :value, :external_value, :specification_extension]

  field :summary, 1, type: :string
  field :description, 2, type: :string
  field :value, 3, type: Openapi.V3.Any
  field :external_value, 4, type: :string
  field :specification_extension, 5, repeated: true, type: Openapi.V3.NamedAny
end

defmodule Openapi.V3.ExampleOrReference do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          oneof: {atom, any}
        }
  defstruct [:oneof]

  oneof :oneof, 0
  field :example, 1, type: Openapi.V3.Example, oneof: 0
  field :reference, 2, type: Openapi.V3.Reference, oneof: 0
end

defmodule Openapi.V3.ExamplesOrReferences do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          additional_properties: [Openapi.V3.NamedExampleOrReference.t()]
        }
  defstruct [:additional_properties]

  field :additional_properties, 1, repeated: true, type: Openapi.V3.NamedExampleOrReference
end

defmodule Openapi.V3.Expression do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          additional_properties: [Openapi.V3.NamedAny.t()]
        }
  defstruct [:additional_properties]

  field :additional_properties, 1, repeated: true, type: Openapi.V3.NamedAny
end

defmodule Openapi.V3.ExternalDocs do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          description: String.t(),
          url: String.t(),
          specification_extension: [Openapi.V3.NamedAny.t()]
        }
  defstruct [:description, :url, :specification_extension]

  field :description, 1, type: :string
  field :url, 2, type: :string
  field :specification_extension, 3, repeated: true, type: Openapi.V3.NamedAny
end

defmodule Openapi.V3.Header do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          description: String.t(),
          required: boolean,
          deprecated: boolean,
          allow_empty_value: boolean,
          style: String.t(),
          explode: boolean,
          allow_reserved: boolean,
          schema: Openapi.V3.SchemaOrReference.t(),
          example: Openapi.V3.Any.t(),
          examples: Openapi.V3.ExamplesOrReferences.t(),
          content: Openapi.V3.MediaTypes.t(),
          specification_extension: [Openapi.V3.NamedAny.t()]
        }
  defstruct [
    :description,
    :required,
    :deprecated,
    :allow_empty_value,
    :style,
    :explode,
    :allow_reserved,
    :schema,
    :example,
    :examples,
    :content,
    :specification_extension
  ]

  field :description, 1, type: :string
  field :required, 2, type: :bool
  field :deprecated, 3, type: :bool
  field :allow_empty_value, 4, type: :bool
  field :style, 5, type: :string
  field :explode, 6, type: :bool
  field :allow_reserved, 7, type: :bool
  field :schema, 8, type: Openapi.V3.SchemaOrReference
  field :example, 9, type: Openapi.V3.Any
  field :examples, 10, type: Openapi.V3.ExamplesOrReferences
  field :content, 11, type: Openapi.V3.MediaTypes
  field :specification_extension, 12, repeated: true, type: Openapi.V3.NamedAny
end

defmodule Openapi.V3.HeaderOrReference do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          oneof: {atom, any}
        }
  defstruct [:oneof]

  oneof :oneof, 0
  field :header, 1, type: Openapi.V3.Header, oneof: 0
  field :reference, 2, type: Openapi.V3.Reference, oneof: 0
end

defmodule Openapi.V3.HeadersOrReferences do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          additional_properties: [Openapi.V3.NamedHeaderOrReference.t()]
        }
  defstruct [:additional_properties]

  field :additional_properties, 1, repeated: true, type: Openapi.V3.NamedHeaderOrReference
end

defmodule Openapi.V3.Info do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          title: String.t(),
          description: String.t(),
          terms_of_service: String.t(),
          contact: Openapi.V3.Contact.t(),
          license: Openapi.V3.License.t(),
          version: String.t(),
          specification_extension: [Openapi.V3.NamedAny.t()]
        }
  defstruct [
    :title,
    :description,
    :terms_of_service,
    :contact,
    :license,
    :version,
    :specification_extension
  ]

  field :title, 1, type: :string
  field :description, 2, type: :string
  field :terms_of_service, 3, type: :string
  field :contact, 4, type: Openapi.V3.Contact
  field :license, 5, type: Openapi.V3.License
  field :version, 6, type: :string
  field :specification_extension, 7, repeated: true, type: Openapi.V3.NamedAny
end

defmodule Openapi.V3.ItemsItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          schema_or_reference: [Openapi.V3.SchemaOrReference.t()]
        }
  defstruct [:schema_or_reference]

  field :schema_or_reference, 1, repeated: true, type: Openapi.V3.SchemaOrReference
end

defmodule Openapi.V3.License do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          url: String.t(),
          specification_extension: [Openapi.V3.NamedAny.t()]
        }
  defstruct [:name, :url, :specification_extension]

  field :name, 1, type: :string
  field :url, 2, type: :string
  field :specification_extension, 3, repeated: true, type: Openapi.V3.NamedAny
end

defmodule Openapi.V3.Link do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation_ref: String.t(),
          operation_id: String.t(),
          parameters: Openapi.V3.AnysOrExpressions.t(),
          request_body: Openapi.V3.AnyOrExpression.t(),
          description: String.t(),
          server: Openapi.V3.Server.t(),
          specification_extension: [Openapi.V3.NamedAny.t()]
        }
  defstruct [
    :operation_ref,
    :operation_id,
    :parameters,
    :request_body,
    :description,
    :server,
    :specification_extension
  ]

  field :operation_ref, 1, type: :string
  field :operation_id, 2, type: :string
  field :parameters, 3, type: Openapi.V3.AnysOrExpressions
  field :request_body, 4, type: Openapi.V3.AnyOrExpression
  field :description, 5, type: :string
  field :server, 6, type: Openapi.V3.Server
  field :specification_extension, 7, repeated: true, type: Openapi.V3.NamedAny
end

defmodule Openapi.V3.LinkOrReference do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          oneof: {atom, any}
        }
  defstruct [:oneof]

  oneof :oneof, 0
  field :link, 1, type: Openapi.V3.Link, oneof: 0
  field :reference, 2, type: Openapi.V3.Reference, oneof: 0
end

defmodule Openapi.V3.LinksOrReferences do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          additional_properties: [Openapi.V3.NamedLinkOrReference.t()]
        }
  defstruct [:additional_properties]

  field :additional_properties, 1, repeated: true, type: Openapi.V3.NamedLinkOrReference
end

defmodule Openapi.V3.MediaType do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          schema: Openapi.V3.SchemaOrReference.t(),
          example: Openapi.V3.Any.t(),
          examples: Openapi.V3.ExamplesOrReferences.t(),
          encoding: Openapi.V3.Encodings.t(),
          specification_extension: [Openapi.V3.NamedAny.t()]
        }
  defstruct [:schema, :example, :examples, :encoding, :specification_extension]

  field :schema, 1, type: Openapi.V3.SchemaOrReference
  field :example, 2, type: Openapi.V3.Any
  field :examples, 3, type: Openapi.V3.ExamplesOrReferences
  field :encoding, 4, type: Openapi.V3.Encodings
  field :specification_extension, 5, repeated: true, type: Openapi.V3.NamedAny
end

defmodule Openapi.V3.MediaTypes do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          additional_properties: [Openapi.V3.NamedMediaType.t()]
        }
  defstruct [:additional_properties]

  field :additional_properties, 1, repeated: true, type: Openapi.V3.NamedMediaType
end

defmodule Openapi.V3.NamedAny do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          value: Openapi.V3.Any.t()
        }
  defstruct [:name, :value]

  field :name, 1, type: :string
  field :value, 2, type: Openapi.V3.Any
end

defmodule Openapi.V3.NamedAnyOrExpression do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          value: Openapi.V3.AnyOrExpression.t()
        }
  defstruct [:name, :value]

  field :name, 1, type: :string
  field :value, 2, type: Openapi.V3.AnyOrExpression
end

defmodule Openapi.V3.NamedCallbackOrReference do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          value: Openapi.V3.CallbackOrReference.t()
        }
  defstruct [:name, :value]

  field :name, 1, type: :string
  field :value, 2, type: Openapi.V3.CallbackOrReference
end

defmodule Openapi.V3.NamedEncoding do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          value: Openapi.V3.Encoding.t()
        }
  defstruct [:name, :value]

  field :name, 1, type: :string
  field :value, 2, type: Openapi.V3.Encoding
end

defmodule Openapi.V3.NamedExampleOrReference do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          value: Openapi.V3.ExampleOrReference.t()
        }
  defstruct [:name, :value]

  field :name, 1, type: :string
  field :value, 2, type: Openapi.V3.ExampleOrReference
end

defmodule Openapi.V3.NamedHeaderOrReference do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          value: Openapi.V3.HeaderOrReference.t()
        }
  defstruct [:name, :value]

  field :name, 1, type: :string
  field :value, 2, type: Openapi.V3.HeaderOrReference
end

defmodule Openapi.V3.NamedLinkOrReference do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          value: Openapi.V3.LinkOrReference.t()
        }
  defstruct [:name, :value]

  field :name, 1, type: :string
  field :value, 2, type: Openapi.V3.LinkOrReference
end

defmodule Openapi.V3.NamedMediaType do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          value: Openapi.V3.MediaType.t()
        }
  defstruct [:name, :value]

  field :name, 1, type: :string
  field :value, 2, type: Openapi.V3.MediaType
end

defmodule Openapi.V3.NamedParameterOrReference do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          value: Openapi.V3.ParameterOrReference.t()
        }
  defstruct [:name, :value]

  field :name, 1, type: :string
  field :value, 2, type: Openapi.V3.ParameterOrReference
end

defmodule Openapi.V3.NamedPathItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          value: Openapi.V3.PathItem.t()
        }
  defstruct [:name, :value]

  field :name, 1, type: :string
  field :value, 2, type: Openapi.V3.PathItem
end

defmodule Openapi.V3.NamedRequestBodyOrReference do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          value: Openapi.V3.RequestBodyOrReference.t()
        }
  defstruct [:name, :value]

  field :name, 1, type: :string
  field :value, 2, type: Openapi.V3.RequestBodyOrReference
end

defmodule Openapi.V3.NamedResponseOrReference do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          value: Openapi.V3.ResponseOrReference.t()
        }
  defstruct [:name, :value]

  field :name, 1, type: :string
  field :value, 2, type: Openapi.V3.ResponseOrReference
end

defmodule Openapi.V3.NamedSchemaOrReference do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          value: Openapi.V3.SchemaOrReference.t()
        }
  defstruct [:name, :value]

  field :name, 1, type: :string
  field :value, 2, type: Openapi.V3.SchemaOrReference
end

defmodule Openapi.V3.NamedSecuritySchemeOrReference do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          value: Openapi.V3.SecuritySchemeOrReference.t()
        }
  defstruct [:name, :value]

  field :name, 1, type: :string
  field :value, 2, type: Openapi.V3.SecuritySchemeOrReference
end

defmodule Openapi.V3.NamedServerVariable do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          value: Openapi.V3.ServerVariable.t()
        }
  defstruct [:name, :value]

  field :name, 1, type: :string
  field :value, 2, type: Openapi.V3.ServerVariable
end

defmodule Openapi.V3.NamedString do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          value: String.t()
        }
  defstruct [:name, :value]

  field :name, 1, type: :string
  field :value, 2, type: :string
end

defmodule Openapi.V3.OauthFlow do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          authorization_url: String.t(),
          token_url: String.t(),
          refresh_url: String.t(),
          scopes: Openapi.V3.Strings.t(),
          specification_extension: [Openapi.V3.NamedAny.t()]
        }
  defstruct [:authorization_url, :token_url, :refresh_url, :scopes, :specification_extension]

  field :authorization_url, 1, type: :string
  field :token_url, 2, type: :string
  field :refresh_url, 3, type: :string
  field :scopes, 4, type: Openapi.V3.Strings
  field :specification_extension, 5, repeated: true, type: Openapi.V3.NamedAny
end

defmodule Openapi.V3.OauthFlows do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          implicit: Openapi.V3.OauthFlow.t(),
          password: Openapi.V3.OauthFlow.t(),
          client_credentials: Openapi.V3.OauthFlow.t(),
          authorization_code: Openapi.V3.OauthFlow.t(),
          specification_extension: [Openapi.V3.NamedAny.t()]
        }
  defstruct [
    :implicit,
    :password,
    :client_credentials,
    :authorization_code,
    :specification_extension
  ]

  field :implicit, 1, type: Openapi.V3.OauthFlow
  field :password, 2, type: Openapi.V3.OauthFlow
  field :client_credentials, 3, type: Openapi.V3.OauthFlow
  field :authorization_code, 4, type: Openapi.V3.OauthFlow
  field :specification_extension, 5, repeated: true, type: Openapi.V3.NamedAny
end

defmodule Openapi.V3.Object do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          additional_properties: [Openapi.V3.NamedAny.t()]
        }
  defstruct [:additional_properties]

  field :additional_properties, 1, repeated: true, type: Openapi.V3.NamedAny
end

defmodule Openapi.V3.Operation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tags: [String.t()],
          summary: String.t(),
          description: String.t(),
          external_docs: Openapi.V3.ExternalDocs.t(),
          operation_id: String.t(),
          parameters: [Openapi.V3.ParameterOrReference.t()],
          request_body: Openapi.V3.RequestBodyOrReference.t(),
          responses: Openapi.V3.Responses.t(),
          callbacks: Openapi.V3.CallbacksOrReferences.t(),
          deprecated: boolean,
          security: [Openapi.V3.SecurityRequirement.t()],
          servers: [Openapi.V3.Server.t()],
          specification_extension: [Openapi.V3.NamedAny.t()]
        }
  defstruct [
    :tags,
    :summary,
    :description,
    :external_docs,
    :operation_id,
    :parameters,
    :request_body,
    :responses,
    :callbacks,
    :deprecated,
    :security,
    :servers,
    :specification_extension
  ]

  field :tags, 1, repeated: true, type: :string
  field :summary, 2, type: :string
  field :description, 3, type: :string
  field :external_docs, 4, type: Openapi.V3.ExternalDocs
  field :operation_id, 5, type: :string
  field :parameters, 6, repeated: true, type: Openapi.V3.ParameterOrReference
  field :request_body, 7, type: Openapi.V3.RequestBodyOrReference
  field :responses, 8, type: Openapi.V3.Responses
  field :callbacks, 9, type: Openapi.V3.CallbacksOrReferences
  field :deprecated, 10, type: :bool
  field :security, 11, repeated: true, type: Openapi.V3.SecurityRequirement
  field :servers, 12, repeated: true, type: Openapi.V3.Server
  field :specification_extension, 13, repeated: true, type: Openapi.V3.NamedAny
end

defmodule Openapi.V3.Parameter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          in: String.t(),
          description: String.t(),
          required: boolean,
          deprecated: boolean,
          allow_empty_value: boolean,
          style: String.t(),
          explode: boolean,
          allow_reserved: boolean,
          schema: Openapi.V3.SchemaOrReference.t(),
          example: Openapi.V3.Any.t(),
          examples: Openapi.V3.ExamplesOrReferences.t(),
          content: Openapi.V3.MediaTypes.t(),
          specification_extension: [Openapi.V3.NamedAny.t()]
        }
  defstruct [
    :name,
    :in,
    :description,
    :required,
    :deprecated,
    :allow_empty_value,
    :style,
    :explode,
    :allow_reserved,
    :schema,
    :example,
    :examples,
    :content,
    :specification_extension
  ]

  field :name, 1, type: :string
  field :in, 2, type: :string
  field :description, 3, type: :string
  field :required, 4, type: :bool
  field :deprecated, 5, type: :bool
  field :allow_empty_value, 6, type: :bool
  field :style, 7, type: :string
  field :explode, 8, type: :bool
  field :allow_reserved, 9, type: :bool
  field :schema, 10, type: Openapi.V3.SchemaOrReference
  field :example, 11, type: Openapi.V3.Any
  field :examples, 12, type: Openapi.V3.ExamplesOrReferences
  field :content, 13, type: Openapi.V3.MediaTypes
  field :specification_extension, 14, repeated: true, type: Openapi.V3.NamedAny
end

defmodule Openapi.V3.ParameterOrReference do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          oneof: {atom, any}
        }
  defstruct [:oneof]

  oneof :oneof, 0
  field :parameter, 1, type: Openapi.V3.Parameter, oneof: 0
  field :reference, 2, type: Openapi.V3.Reference, oneof: 0
end

defmodule Openapi.V3.ParametersOrReferences do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          additional_properties: [Openapi.V3.NamedParameterOrReference.t()]
        }
  defstruct [:additional_properties]

  field :additional_properties, 1, repeated: true, type: Openapi.V3.NamedParameterOrReference
end

defmodule Openapi.V3.PathItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          _ref: String.t(),
          summary: String.t(),
          description: String.t(),
          get: Openapi.V3.Operation.t(),
          put: Openapi.V3.Operation.t(),
          post: Openapi.V3.Operation.t(),
          delete: Openapi.V3.Operation.t(),
          options: Openapi.V3.Operation.t(),
          head: Openapi.V3.Operation.t(),
          patch: Openapi.V3.Operation.t(),
          trace: Openapi.V3.Operation.t(),
          servers: [Openapi.V3.Server.t()],
          parameters: [Openapi.V3.ParameterOrReference.t()],
          specification_extension: [Openapi.V3.NamedAny.t()]
        }
  defstruct [
    :_ref,
    :summary,
    :description,
    :get,
    :put,
    :post,
    :delete,
    :options,
    :head,
    :patch,
    :trace,
    :servers,
    :parameters,
    :specification_extension
  ]

  field :_ref, 1, type: :string
  field :summary, 2, type: :string
  field :description, 3, type: :string
  field :get, 4, type: Openapi.V3.Operation
  field :put, 5, type: Openapi.V3.Operation
  field :post, 6, type: Openapi.V3.Operation
  field :delete, 7, type: Openapi.V3.Operation
  field :options, 8, type: Openapi.V3.Operation
  field :head, 9, type: Openapi.V3.Operation
  field :patch, 10, type: Openapi.V3.Operation
  field :trace, 11, type: Openapi.V3.Operation
  field :servers, 12, repeated: true, type: Openapi.V3.Server
  field :parameters, 13, repeated: true, type: Openapi.V3.ParameterOrReference
  field :specification_extension, 14, repeated: true, type: Openapi.V3.NamedAny
end

defmodule Openapi.V3.Paths do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          path: [Openapi.V3.NamedPathItem.t()],
          specification_extension: [Openapi.V3.NamedAny.t()]
        }
  defstruct [:path, :specification_extension]

  field :path, 1, repeated: true, type: Openapi.V3.NamedPathItem
  field :specification_extension, 2, repeated: true, type: Openapi.V3.NamedAny
end

defmodule Openapi.V3.Properties do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          additional_properties: [Openapi.V3.NamedSchemaOrReference.t()]
        }
  defstruct [:additional_properties]

  field :additional_properties, 1, repeated: true, type: Openapi.V3.NamedSchemaOrReference
end

defmodule Openapi.V3.Reference do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          _ref: String.t()
        }
  defstruct [:_ref]

  field :_ref, 1, type: :string
end

defmodule Openapi.V3.RequestBodiesOrReferences do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          additional_properties: [Openapi.V3.NamedRequestBodyOrReference.t()]
        }
  defstruct [:additional_properties]

  field :additional_properties, 1, repeated: true, type: Openapi.V3.NamedRequestBodyOrReference
end

defmodule Openapi.V3.RequestBody do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          description: String.t(),
          content: Openapi.V3.MediaTypes.t(),
          required: boolean,
          specification_extension: [Openapi.V3.NamedAny.t()]
        }
  defstruct [:description, :content, :required, :specification_extension]

  field :description, 1, type: :string
  field :content, 2, type: Openapi.V3.MediaTypes
  field :required, 3, type: :bool
  field :specification_extension, 4, repeated: true, type: Openapi.V3.NamedAny
end

defmodule Openapi.V3.RequestBodyOrReference do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          oneof: {atom, any}
        }
  defstruct [:oneof]

  oneof :oneof, 0
  field :request_body, 1, type: Openapi.V3.RequestBody, oneof: 0
  field :reference, 2, type: Openapi.V3.Reference, oneof: 0
end

defmodule Openapi.V3.Response do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          description: String.t(),
          headers: Openapi.V3.HeadersOrReferences.t(),
          content: Openapi.V3.MediaTypes.t(),
          links: Openapi.V3.LinksOrReferences.t(),
          specification_extension: [Openapi.V3.NamedAny.t()]
        }
  defstruct [:description, :headers, :content, :links, :specification_extension]

  field :description, 1, type: :string
  field :headers, 2, type: Openapi.V3.HeadersOrReferences
  field :content, 3, type: Openapi.V3.MediaTypes
  field :links, 4, type: Openapi.V3.LinksOrReferences
  field :specification_extension, 5, repeated: true, type: Openapi.V3.NamedAny
end

defmodule Openapi.V3.ResponseOrReference do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          oneof: {atom, any}
        }
  defstruct [:oneof]

  oneof :oneof, 0
  field :response, 1, type: Openapi.V3.Response, oneof: 0
  field :reference, 2, type: Openapi.V3.Reference, oneof: 0
end

defmodule Openapi.V3.Responses do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          default: Openapi.V3.ResponseOrReference.t(),
          response_or_reference: [Openapi.V3.NamedResponseOrReference.t()],
          specification_extension: [Openapi.V3.NamedAny.t()]
        }
  defstruct [:default, :response_or_reference, :specification_extension]

  field :default, 1, type: Openapi.V3.ResponseOrReference
  field :response_or_reference, 2, repeated: true, type: Openapi.V3.NamedResponseOrReference
  field :specification_extension, 3, repeated: true, type: Openapi.V3.NamedAny
end

defmodule Openapi.V3.ResponsesOrReferences do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          additional_properties: [Openapi.V3.NamedResponseOrReference.t()]
        }
  defstruct [:additional_properties]

  field :additional_properties, 1, repeated: true, type: Openapi.V3.NamedResponseOrReference
end

defmodule Openapi.V3.Schema do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          nullable: boolean,
          discriminator: Openapi.V3.Discriminator.t(),
          read_only: boolean,
          write_only: boolean,
          xml: Openapi.V3.Xml.t(),
          external_docs: Openapi.V3.ExternalDocs.t(),
          example: Openapi.V3.Any.t(),
          deprecated: boolean,
          title: String.t(),
          multiple_of: float,
          maximum: float,
          exclusive_maximum: boolean,
          minimum: float,
          exclusive_minimum: boolean,
          max_length: integer,
          min_length: integer,
          pattern: String.t(),
          max_items: integer,
          min_items: integer,
          unique_items: boolean,
          max_properties: integer,
          min_properties: integer,
          required: [String.t()],
          enum: [Openapi.V3.Any.t()],
          type: String.t(),
          all_of: [Openapi.V3.SchemaOrReference.t()],
          one_of: [Openapi.V3.SchemaOrReference.t()],
          any_of: [Openapi.V3.SchemaOrReference.t()],
          not: Openapi.V3.Schema.t(),
          items: Openapi.V3.ItemsItem.t(),
          properties: Openapi.V3.Properties.t(),
          additional_properties: Openapi.V3.AdditionalPropertiesItem.t(),
          default: Openapi.V3.DefaultType.t(),
          description: String.t(),
          format: String.t(),
          specification_extension: [Openapi.V3.NamedAny.t()]
        }
  defstruct [
    :nullable,
    :discriminator,
    :read_only,
    :write_only,
    :xml,
    :external_docs,
    :example,
    :deprecated,
    :title,
    :multiple_of,
    :maximum,
    :exclusive_maximum,
    :minimum,
    :exclusive_minimum,
    :max_length,
    :min_length,
    :pattern,
    :max_items,
    :min_items,
    :unique_items,
    :max_properties,
    :min_properties,
    :required,
    :enum,
    :type,
    :all_of,
    :one_of,
    :any_of,
    :not,
    :items,
    :properties,
    :additional_properties,
    :default,
    :description,
    :format,
    :specification_extension
  ]

  field :nullable, 1, type: :bool
  field :discriminator, 2, type: Openapi.V3.Discriminator
  field :read_only, 3, type: :bool
  field :write_only, 4, type: :bool
  field :xml, 5, type: Openapi.V3.Xml
  field :external_docs, 6, type: Openapi.V3.ExternalDocs
  field :example, 7, type: Openapi.V3.Any
  field :deprecated, 8, type: :bool
  field :title, 9, type: :string
  field :multiple_of, 10, type: :double
  field :maximum, 11, type: :double
  field :exclusive_maximum, 12, type: :bool
  field :minimum, 13, type: :double
  field :exclusive_minimum, 14, type: :bool
  field :max_length, 15, type: :int64
  field :min_length, 16, type: :int64
  field :pattern, 17, type: :string
  field :max_items, 18, type: :int64
  field :min_items, 19, type: :int64
  field :unique_items, 20, type: :bool
  field :max_properties, 21, type: :int64
  field :min_properties, 22, type: :int64
  field :required, 23, repeated: true, type: :string
  field :enum, 24, repeated: true, type: Openapi.V3.Any
  field :type, 25, type: :string
  field :all_of, 26, repeated: true, type: Openapi.V3.SchemaOrReference
  field :one_of, 27, repeated: true, type: Openapi.V3.SchemaOrReference
  field :any_of, 28, repeated: true, type: Openapi.V3.SchemaOrReference
  field :not, 29, type: Openapi.V3.Schema
  field :items, 30, type: Openapi.V3.ItemsItem
  field :properties, 31, type: Openapi.V3.Properties
  field :additional_properties, 32, type: Openapi.V3.AdditionalPropertiesItem
  field :default, 33, type: Openapi.V3.DefaultType
  field :description, 34, type: :string
  field :format, 35, type: :string
  field :specification_extension, 36, repeated: true, type: Openapi.V3.NamedAny
end

defmodule Openapi.V3.SchemaOrReference do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          oneof: {atom, any}
        }
  defstruct [:oneof]

  oneof :oneof, 0
  field :schema, 1, type: Openapi.V3.Schema, oneof: 0
  field :reference, 2, type: Openapi.V3.Reference, oneof: 0
end

defmodule Openapi.V3.SchemasOrReferences do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          additional_properties: [Openapi.V3.NamedSchemaOrReference.t()]
        }
  defstruct [:additional_properties]

  field :additional_properties, 1, repeated: true, type: Openapi.V3.NamedSchemaOrReference
end

defmodule Openapi.V3.SecurityRequirement do
  @moduledoc false
  use Protobuf, syntax: :proto3

  defstruct []
end

defmodule Openapi.V3.SecurityScheme do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: String.t(),
          description: String.t(),
          name: String.t(),
          in: String.t(),
          scheme: String.t(),
          bearer_format: String.t(),
          flows: Openapi.V3.OauthFlows.t(),
          open_id_connect_url: String.t(),
          specification_extension: [Openapi.V3.NamedAny.t()]
        }
  defstruct [
    :type,
    :description,
    :name,
    :in,
    :scheme,
    :bearer_format,
    :flows,
    :open_id_connect_url,
    :specification_extension
  ]

  field :type, 1, type: :string
  field :description, 2, type: :string
  field :name, 3, type: :string
  field :in, 4, type: :string
  field :scheme, 5, type: :string
  field :bearer_format, 6, type: :string
  field :flows, 7, type: Openapi.V3.OauthFlows
  field :open_id_connect_url, 8, type: :string
  field :specification_extension, 9, repeated: true, type: Openapi.V3.NamedAny
end

defmodule Openapi.V3.SecuritySchemeOrReference do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          oneof: {atom, any}
        }
  defstruct [:oneof]

  oneof :oneof, 0
  field :security_scheme, 1, type: Openapi.V3.SecurityScheme, oneof: 0
  field :reference, 2, type: Openapi.V3.Reference, oneof: 0
end

defmodule Openapi.V3.SecuritySchemesOrReferences do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          additional_properties: [Openapi.V3.NamedSecuritySchemeOrReference.t()]
        }
  defstruct [:additional_properties]

  field :additional_properties, 1, repeated: true, type: Openapi.V3.NamedSecuritySchemeOrReference
end

defmodule Openapi.V3.Server do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          url: String.t(),
          description: String.t(),
          variables: Openapi.V3.ServerVariables.t(),
          specification_extension: [Openapi.V3.NamedAny.t()]
        }
  defstruct [:url, :description, :variables, :specification_extension]

  field :url, 1, type: :string
  field :description, 2, type: :string
  field :variables, 3, type: Openapi.V3.ServerVariables
  field :specification_extension, 4, repeated: true, type: Openapi.V3.NamedAny
end

defmodule Openapi.V3.ServerVariable do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enum: [String.t()],
          default: String.t(),
          description: String.t(),
          specification_extension: [Openapi.V3.NamedAny.t()]
        }
  defstruct [:enum, :default, :description, :specification_extension]

  field :enum, 1, repeated: true, type: :string
  field :default, 2, type: :string
  field :description, 3, type: :string
  field :specification_extension, 4, repeated: true, type: Openapi.V3.NamedAny
end

defmodule Openapi.V3.ServerVariables do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          additional_properties: [Openapi.V3.NamedServerVariable.t()]
        }
  defstruct [:additional_properties]

  field :additional_properties, 1, repeated: true, type: Openapi.V3.NamedServerVariable
end

defmodule Openapi.V3.SpecificationExtension do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          oneof: {atom, any}
        }
  defstruct [:oneof]

  oneof :oneof, 0
  field :number, 1, type: :double, oneof: 0
  field :boolean, 2, type: :bool, oneof: 0
  field :string, 3, type: :string, oneof: 0
end

defmodule Openapi.V3.StringArray do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: [String.t()]
        }
  defstruct [:value]

  field :value, 1, repeated: true, type: :string
end

defmodule Openapi.V3.Strings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          additional_properties: [Openapi.V3.NamedString.t()]
        }
  defstruct [:additional_properties]

  field :additional_properties, 1, repeated: true, type: Openapi.V3.NamedString
end

defmodule Openapi.V3.Tag do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          external_docs: Openapi.V3.ExternalDocs.t(),
          specification_extension: [Openapi.V3.NamedAny.t()]
        }
  defstruct [:name, :description, :external_docs, :specification_extension]

  field :name, 1, type: :string
  field :description, 2, type: :string
  field :external_docs, 3, type: Openapi.V3.ExternalDocs
  field :specification_extension, 4, repeated: true, type: Openapi.V3.NamedAny
end

defmodule Openapi.V3.Xml do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          namespace: String.t(),
          prefix: String.t(),
          attribute: boolean,
          wrapped: boolean,
          specification_extension: [Openapi.V3.NamedAny.t()]
        }
  defstruct [:name, :namespace, :prefix, :attribute, :wrapped, :specification_extension]

  field :name, 1, type: :string
  field :namespace, 2, type: :string
  field :prefix, 3, type: :string
  field :attribute, 4, type: :bool
  field :wrapped, 5, type: :bool
  field :specification_extension, 6, repeated: true, type: Openapi.V3.NamedAny
end

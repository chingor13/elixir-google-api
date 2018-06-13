defmodule Openapi.V2.AdditionalPropertiesItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          oneof: {atom, any}
        }
  defstruct [:oneof]

  oneof :oneof, 0
  field :schema, 1, type: Openapi.V2.Schema, oneof: 0
  field :boolean, 2, type: :bool, oneof: 0
end

defmodule Openapi.V2.Any do
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

defmodule Openapi.V2.ApiKeySecurity do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: String.t(),
          name: String.t(),
          in: String.t(),
          description: String.t(),
          vendor_extension: [Openapi.V2.NamedAny.t()]
        }
  defstruct [:type, :name, :in, :description, :vendor_extension]

  field :type, 1, type: :string
  field :name, 2, type: :string
  field :in, 3, type: :string
  field :description, 4, type: :string
  field :vendor_extension, 5, repeated: true, type: Openapi.V2.NamedAny
end

defmodule Openapi.V2.BasicAuthenticationSecurity do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: String.t(),
          description: String.t(),
          vendor_extension: [Openapi.V2.NamedAny.t()]
        }
  defstruct [:type, :description, :vendor_extension]

  field :type, 1, type: :string
  field :description, 2, type: :string
  field :vendor_extension, 3, repeated: true, type: Openapi.V2.NamedAny
end

defmodule Openapi.V2.BodyParameter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          description: String.t(),
          name: String.t(),
          in: String.t(),
          required: boolean,
          schema: Openapi.V2.Schema.t(),
          vendor_extension: [Openapi.V2.NamedAny.t()]
        }
  defstruct [:description, :name, :in, :required, :schema, :vendor_extension]

  field :description, 1, type: :string
  field :name, 2, type: :string
  field :in, 3, type: :string
  field :required, 4, type: :bool
  field :schema, 5, type: Openapi.V2.Schema
  field :vendor_extension, 6, repeated: true, type: Openapi.V2.NamedAny
end

defmodule Openapi.V2.Contact do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          url: String.t(),
          email: String.t(),
          vendor_extension: [Openapi.V2.NamedAny.t()]
        }
  defstruct [:name, :url, :email, :vendor_extension]

  field :name, 1, type: :string
  field :url, 2, type: :string
  field :email, 3, type: :string
  field :vendor_extension, 4, repeated: true, type: Openapi.V2.NamedAny
end

defmodule Openapi.V2.Default do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          additional_properties: [Openapi.V2.NamedAny.t()]
        }
  defstruct [:additional_properties]

  field :additional_properties, 1, repeated: true, type: Openapi.V2.NamedAny
end

defmodule Openapi.V2.Definitions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          additional_properties: [Openapi.V2.NamedSchema.t()]
        }
  defstruct [:additional_properties]

  field :additional_properties, 1, repeated: true, type: Openapi.V2.NamedSchema
end

defmodule Openapi.V2.Document do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          swagger: String.t(),
          info: Openapi.V2.Info.t(),
          host: String.t(),
          base_path: String.t(),
          schemes: [String.t()],
          consumes: [String.t()],
          produces: [String.t()],
          paths: Openapi.V2.Paths.t(),
          definitions: Openapi.V2.Definitions.t(),
          parameters: Openapi.V2.ParameterDefinitions.t(),
          responses: Openapi.V2.ResponseDefinitions.t(),
          security: [Openapi.V2.SecurityRequirement.t()],
          security_definitions: Openapi.V2.SecurityDefinitions.t(),
          tags: [Openapi.V2.Tag.t()],
          external_docs: Openapi.V2.ExternalDocs.t(),
          vendor_extension: [Openapi.V2.NamedAny.t()]
        }
  defstruct [
    :swagger,
    :info,
    :host,
    :base_path,
    :schemes,
    :consumes,
    :produces,
    :paths,
    :definitions,
    :parameters,
    :responses,
    :security,
    :security_definitions,
    :tags,
    :external_docs,
    :vendor_extension
  ]

  field :swagger, 1, type: :string
  field :info, 2, type: Openapi.V2.Info
  field :host, 3, type: :string
  field :base_path, 4, type: :string
  field :schemes, 5, repeated: true, type: :string
  field :consumes, 6, repeated: true, type: :string
  field :produces, 7, repeated: true, type: :string
  field :paths, 8, type: Openapi.V2.Paths
  field :definitions, 9, type: Openapi.V2.Definitions
  field :parameters, 10, type: Openapi.V2.ParameterDefinitions
  field :responses, 11, type: Openapi.V2.ResponseDefinitions
  field :security, 12, repeated: true, type: Openapi.V2.SecurityRequirement
  field :security_definitions, 13, type: Openapi.V2.SecurityDefinitions
  field :tags, 14, repeated: true, type: Openapi.V2.Tag
  field :external_docs, 15, type: Openapi.V2.ExternalDocs
  field :vendor_extension, 16, repeated: true, type: Openapi.V2.NamedAny
end

defmodule Openapi.V2.Examples do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          additional_properties: [Openapi.V2.NamedAny.t()]
        }
  defstruct [:additional_properties]

  field :additional_properties, 1, repeated: true, type: Openapi.V2.NamedAny
end

defmodule Openapi.V2.ExternalDocs do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          description: String.t(),
          url: String.t(),
          vendor_extension: [Openapi.V2.NamedAny.t()]
        }
  defstruct [:description, :url, :vendor_extension]

  field :description, 1, type: :string
  field :url, 2, type: :string
  field :vendor_extension, 3, repeated: true, type: Openapi.V2.NamedAny
end

defmodule Openapi.V2.FileSchema do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          format: String.t(),
          title: String.t(),
          description: String.t(),
          default: Openapi.V2.Any.t(),
          required: [String.t()],
          type: String.t(),
          read_only: boolean,
          external_docs: Openapi.V2.ExternalDocs.t(),
          example: Openapi.V2.Any.t(),
          vendor_extension: [Openapi.V2.NamedAny.t()]
        }
  defstruct [
    :format,
    :title,
    :description,
    :default,
    :required,
    :type,
    :read_only,
    :external_docs,
    :example,
    :vendor_extension
  ]

  field :format, 1, type: :string
  field :title, 2, type: :string
  field :description, 3, type: :string
  field :default, 4, type: Openapi.V2.Any
  field :required, 5, repeated: true, type: :string
  field :type, 6, type: :string
  field :read_only, 7, type: :bool
  field :external_docs, 8, type: Openapi.V2.ExternalDocs
  field :example, 9, type: Openapi.V2.Any
  field :vendor_extension, 10, repeated: true, type: Openapi.V2.NamedAny
end

defmodule Openapi.V2.FormDataParameterSubSchema do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          required: boolean,
          in: String.t(),
          description: String.t(),
          name: String.t(),
          allow_empty_value: boolean,
          type: String.t(),
          format: String.t(),
          items: Openapi.V2.PrimitivesItems.t(),
          collection_format: String.t(),
          default: Openapi.V2.Any.t(),
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
          enum: [Openapi.V2.Any.t()],
          multiple_of: float,
          vendor_extension: [Openapi.V2.NamedAny.t()]
        }
  defstruct [
    :required,
    :in,
    :description,
    :name,
    :allow_empty_value,
    :type,
    :format,
    :items,
    :collection_format,
    :default,
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
    :enum,
    :multiple_of,
    :vendor_extension
  ]

  field :required, 1, type: :bool
  field :in, 2, type: :string
  field :description, 3, type: :string
  field :name, 4, type: :string
  field :allow_empty_value, 5, type: :bool
  field :type, 6, type: :string
  field :format, 7, type: :string
  field :items, 8, type: Openapi.V2.PrimitivesItems
  field :collection_format, 9, type: :string
  field :default, 10, type: Openapi.V2.Any
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
  field :enum, 21, repeated: true, type: Openapi.V2.Any
  field :multiple_of, 22, type: :double
  field :vendor_extension, 23, repeated: true, type: Openapi.V2.NamedAny
end

defmodule Openapi.V2.Header do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: String.t(),
          format: String.t(),
          items: Openapi.V2.PrimitivesItems.t(),
          collection_format: String.t(),
          default: Openapi.V2.Any.t(),
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
          enum: [Openapi.V2.Any.t()],
          multiple_of: float,
          description: String.t(),
          vendor_extension: [Openapi.V2.NamedAny.t()]
        }
  defstruct [
    :type,
    :format,
    :items,
    :collection_format,
    :default,
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
    :enum,
    :multiple_of,
    :description,
    :vendor_extension
  ]

  field :type, 1, type: :string
  field :format, 2, type: :string
  field :items, 3, type: Openapi.V2.PrimitivesItems
  field :collection_format, 4, type: :string
  field :default, 5, type: Openapi.V2.Any
  field :maximum, 6, type: :double
  field :exclusive_maximum, 7, type: :bool
  field :minimum, 8, type: :double
  field :exclusive_minimum, 9, type: :bool
  field :max_length, 10, type: :int64
  field :min_length, 11, type: :int64
  field :pattern, 12, type: :string
  field :max_items, 13, type: :int64
  field :min_items, 14, type: :int64
  field :unique_items, 15, type: :bool
  field :enum, 16, repeated: true, type: Openapi.V2.Any
  field :multiple_of, 17, type: :double
  field :description, 18, type: :string
  field :vendor_extension, 19, repeated: true, type: Openapi.V2.NamedAny
end

defmodule Openapi.V2.HeaderParameterSubSchema do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          required: boolean,
          in: String.t(),
          description: String.t(),
          name: String.t(),
          type: String.t(),
          format: String.t(),
          items: Openapi.V2.PrimitivesItems.t(),
          collection_format: String.t(),
          default: Openapi.V2.Any.t(),
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
          enum: [Openapi.V2.Any.t()],
          multiple_of: float,
          vendor_extension: [Openapi.V2.NamedAny.t()]
        }
  defstruct [
    :required,
    :in,
    :description,
    :name,
    :type,
    :format,
    :items,
    :collection_format,
    :default,
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
    :enum,
    :multiple_of,
    :vendor_extension
  ]

  field :required, 1, type: :bool
  field :in, 2, type: :string
  field :description, 3, type: :string
  field :name, 4, type: :string
  field :type, 5, type: :string
  field :format, 6, type: :string
  field :items, 7, type: Openapi.V2.PrimitivesItems
  field :collection_format, 8, type: :string
  field :default, 9, type: Openapi.V2.Any
  field :maximum, 10, type: :double
  field :exclusive_maximum, 11, type: :bool
  field :minimum, 12, type: :double
  field :exclusive_minimum, 13, type: :bool
  field :max_length, 14, type: :int64
  field :min_length, 15, type: :int64
  field :pattern, 16, type: :string
  field :max_items, 17, type: :int64
  field :min_items, 18, type: :int64
  field :unique_items, 19, type: :bool
  field :enum, 20, repeated: true, type: Openapi.V2.Any
  field :multiple_of, 21, type: :double
  field :vendor_extension, 22, repeated: true, type: Openapi.V2.NamedAny
end

defmodule Openapi.V2.Headers do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          additional_properties: [Openapi.V2.NamedHeader.t()]
        }
  defstruct [:additional_properties]

  field :additional_properties, 1, repeated: true, type: Openapi.V2.NamedHeader
end

defmodule Openapi.V2.Info do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          title: String.t(),
          version: String.t(),
          description: String.t(),
          terms_of_service: String.t(),
          contact: Openapi.V2.Contact.t(),
          license: Openapi.V2.License.t(),
          vendor_extension: [Openapi.V2.NamedAny.t()]
        }
  defstruct [
    :title,
    :version,
    :description,
    :terms_of_service,
    :contact,
    :license,
    :vendor_extension
  ]

  field :title, 1, type: :string
  field :version, 2, type: :string
  field :description, 3, type: :string
  field :terms_of_service, 4, type: :string
  field :contact, 5, type: Openapi.V2.Contact
  field :license, 6, type: Openapi.V2.License
  field :vendor_extension, 7, repeated: true, type: Openapi.V2.NamedAny
end

defmodule Openapi.V2.ItemsItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          schema: [Openapi.V2.Schema.t()]
        }
  defstruct [:schema]

  field :schema, 1, repeated: true, type: Openapi.V2.Schema
end

defmodule Openapi.V2.JsonReference do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          _ref: String.t(),
          description: String.t()
        }
  defstruct [:_ref, :description]

  field :_ref, 1, type: :string
  field :description, 2, type: :string
end

defmodule Openapi.V2.License do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          url: String.t(),
          vendor_extension: [Openapi.V2.NamedAny.t()]
        }
  defstruct [:name, :url, :vendor_extension]

  field :name, 1, type: :string
  field :url, 2, type: :string
  field :vendor_extension, 3, repeated: true, type: Openapi.V2.NamedAny
end

defmodule Openapi.V2.NamedAny do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          value: Openapi.V2.Any.t()
        }
  defstruct [:name, :value]

  field :name, 1, type: :string
  field :value, 2, type: Openapi.V2.Any
end

defmodule Openapi.V2.NamedHeader do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          value: Openapi.V2.Header.t()
        }
  defstruct [:name, :value]

  field :name, 1, type: :string
  field :value, 2, type: Openapi.V2.Header
end

defmodule Openapi.V2.NamedParameter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          value: Openapi.V2.Parameter.t()
        }
  defstruct [:name, :value]

  field :name, 1, type: :string
  field :value, 2, type: Openapi.V2.Parameter
end

defmodule Openapi.V2.NamedPathItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          value: Openapi.V2.PathItem.t()
        }
  defstruct [:name, :value]

  field :name, 1, type: :string
  field :value, 2, type: Openapi.V2.PathItem
end

defmodule Openapi.V2.NamedResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          value: Openapi.V2.Response.t()
        }
  defstruct [:name, :value]

  field :name, 1, type: :string
  field :value, 2, type: Openapi.V2.Response
end

defmodule Openapi.V2.NamedResponseValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          value: Openapi.V2.ResponseValue.t()
        }
  defstruct [:name, :value]

  field :name, 1, type: :string
  field :value, 2, type: Openapi.V2.ResponseValue
end

defmodule Openapi.V2.NamedSchema do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          value: Openapi.V2.Schema.t()
        }
  defstruct [:name, :value]

  field :name, 1, type: :string
  field :value, 2, type: Openapi.V2.Schema
end

defmodule Openapi.V2.NamedSecurityDefinitionsItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          value: Openapi.V2.SecurityDefinitionsItem.t()
        }
  defstruct [:name, :value]

  field :name, 1, type: :string
  field :value, 2, type: Openapi.V2.SecurityDefinitionsItem
end

defmodule Openapi.V2.NamedString do
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

defmodule Openapi.V2.NamedStringArray do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          value: Openapi.V2.StringArray.t()
        }
  defstruct [:name, :value]

  field :name, 1, type: :string
  field :value, 2, type: Openapi.V2.StringArray
end

defmodule Openapi.V2.NonBodyParameter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          oneof: {atom, any}
        }
  defstruct [:oneof]

  oneof :oneof, 0
  field :header_parameter_sub_schema, 1, type: Openapi.V2.HeaderParameterSubSchema, oneof: 0
  field :form_data_parameter_sub_schema, 2, type: Openapi.V2.FormDataParameterSubSchema, oneof: 0
  field :query_parameter_sub_schema, 3, type: Openapi.V2.QueryParameterSubSchema, oneof: 0
  field :path_parameter_sub_schema, 4, type: Openapi.V2.PathParameterSubSchema, oneof: 0
end

defmodule Openapi.V2.Oauth2AccessCodeSecurity do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: String.t(),
          flow: String.t(),
          scopes: Openapi.V2.Oauth2Scopes.t(),
          authorization_url: String.t(),
          token_url: String.t(),
          description: String.t(),
          vendor_extension: [Openapi.V2.NamedAny.t()]
        }
  defstruct [
    :type,
    :flow,
    :scopes,
    :authorization_url,
    :token_url,
    :description,
    :vendor_extension
  ]

  field :type, 1, type: :string
  field :flow, 2, type: :string
  field :scopes, 3, type: Openapi.V2.Oauth2Scopes
  field :authorization_url, 4, type: :string
  field :token_url, 5, type: :string
  field :description, 6, type: :string
  field :vendor_extension, 7, repeated: true, type: Openapi.V2.NamedAny
end

defmodule Openapi.V2.Oauth2ApplicationSecurity do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: String.t(),
          flow: String.t(),
          scopes: Openapi.V2.Oauth2Scopes.t(),
          token_url: String.t(),
          description: String.t(),
          vendor_extension: [Openapi.V2.NamedAny.t()]
        }
  defstruct [:type, :flow, :scopes, :token_url, :description, :vendor_extension]

  field :type, 1, type: :string
  field :flow, 2, type: :string
  field :scopes, 3, type: Openapi.V2.Oauth2Scopes
  field :token_url, 4, type: :string
  field :description, 5, type: :string
  field :vendor_extension, 6, repeated: true, type: Openapi.V2.NamedAny
end

defmodule Openapi.V2.Oauth2ImplicitSecurity do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: String.t(),
          flow: String.t(),
          scopes: Openapi.V2.Oauth2Scopes.t(),
          authorization_url: String.t(),
          description: String.t(),
          vendor_extension: [Openapi.V2.NamedAny.t()]
        }
  defstruct [:type, :flow, :scopes, :authorization_url, :description, :vendor_extension]

  field :type, 1, type: :string
  field :flow, 2, type: :string
  field :scopes, 3, type: Openapi.V2.Oauth2Scopes
  field :authorization_url, 4, type: :string
  field :description, 5, type: :string
  field :vendor_extension, 6, repeated: true, type: Openapi.V2.NamedAny
end

defmodule Openapi.V2.Oauth2PasswordSecurity do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: String.t(),
          flow: String.t(),
          scopes: Openapi.V2.Oauth2Scopes.t(),
          token_url: String.t(),
          description: String.t(),
          vendor_extension: [Openapi.V2.NamedAny.t()]
        }
  defstruct [:type, :flow, :scopes, :token_url, :description, :vendor_extension]

  field :type, 1, type: :string
  field :flow, 2, type: :string
  field :scopes, 3, type: Openapi.V2.Oauth2Scopes
  field :token_url, 4, type: :string
  field :description, 5, type: :string
  field :vendor_extension, 6, repeated: true, type: Openapi.V2.NamedAny
end

defmodule Openapi.V2.Oauth2Scopes do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          additional_properties: [Openapi.V2.NamedString.t()]
        }
  defstruct [:additional_properties]

  field :additional_properties, 1, repeated: true, type: Openapi.V2.NamedString
end

defmodule Openapi.V2.Operation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tags: [String.t()],
          summary: String.t(),
          description: String.t(),
          external_docs: Openapi.V2.ExternalDocs.t(),
          operation_id: String.t(),
          produces: [String.t()],
          consumes: [String.t()],
          parameters: [Openapi.V2.ParametersItem.t()],
          responses: Openapi.V2.Responses.t(),
          schemes: [String.t()],
          deprecated: boolean,
          security: [Openapi.V2.SecurityRequirement.t()],
          vendor_extension: [Openapi.V2.NamedAny.t()]
        }
  defstruct [
    :tags,
    :summary,
    :description,
    :external_docs,
    :operation_id,
    :produces,
    :consumes,
    :parameters,
    :responses,
    :schemes,
    :deprecated,
    :security,
    :vendor_extension
  ]

  field :tags, 1, repeated: true, type: :string
  field :summary, 2, type: :string
  field :description, 3, type: :string
  field :external_docs, 4, type: Openapi.V2.ExternalDocs
  field :operation_id, 5, type: :string
  field :produces, 6, repeated: true, type: :string
  field :consumes, 7, repeated: true, type: :string
  field :parameters, 8, repeated: true, type: Openapi.V2.ParametersItem
  field :responses, 9, type: Openapi.V2.Responses
  field :schemes, 10, repeated: true, type: :string
  field :deprecated, 11, type: :bool
  field :security, 12, repeated: true, type: Openapi.V2.SecurityRequirement
  field :vendor_extension, 13, repeated: true, type: Openapi.V2.NamedAny
end

defmodule Openapi.V2.Parameter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          oneof: {atom, any}
        }
  defstruct [:oneof]

  oneof :oneof, 0
  field :body_parameter, 1, type: Openapi.V2.BodyParameter, oneof: 0
  field :non_body_parameter, 2, type: Openapi.V2.NonBodyParameter, oneof: 0
end

defmodule Openapi.V2.ParameterDefinitions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          additional_properties: [Openapi.V2.NamedParameter.t()]
        }
  defstruct [:additional_properties]

  field :additional_properties, 1, repeated: true, type: Openapi.V2.NamedParameter
end

defmodule Openapi.V2.ParametersItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          oneof: {atom, any}
        }
  defstruct [:oneof]

  oneof :oneof, 0
  field :parameter, 1, type: Openapi.V2.Parameter, oneof: 0
  field :json_reference, 2, type: Openapi.V2.JsonReference, oneof: 0
end

defmodule Openapi.V2.PathItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          _ref: String.t(),
          get: Openapi.V2.Operation.t(),
          put: Openapi.V2.Operation.t(),
          post: Openapi.V2.Operation.t(),
          delete: Openapi.V2.Operation.t(),
          options: Openapi.V2.Operation.t(),
          head: Openapi.V2.Operation.t(),
          patch: Openapi.V2.Operation.t(),
          parameters: [Openapi.V2.ParametersItem.t()],
          vendor_extension: [Openapi.V2.NamedAny.t()]
        }
  defstruct [
    :_ref,
    :get,
    :put,
    :post,
    :delete,
    :options,
    :head,
    :patch,
    :parameters,
    :vendor_extension
  ]

  field :_ref, 1, type: :string
  field :get, 2, type: Openapi.V2.Operation
  field :put, 3, type: Openapi.V2.Operation
  field :post, 4, type: Openapi.V2.Operation
  field :delete, 5, type: Openapi.V2.Operation
  field :options, 6, type: Openapi.V2.Operation
  field :head, 7, type: Openapi.V2.Operation
  field :patch, 8, type: Openapi.V2.Operation
  field :parameters, 9, repeated: true, type: Openapi.V2.ParametersItem
  field :vendor_extension, 10, repeated: true, type: Openapi.V2.NamedAny
end

defmodule Openapi.V2.PathParameterSubSchema do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          required: boolean,
          in: String.t(),
          description: String.t(),
          name: String.t(),
          type: String.t(),
          format: String.t(),
          items: Openapi.V2.PrimitivesItems.t(),
          collection_format: String.t(),
          default: Openapi.V2.Any.t(),
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
          enum: [Openapi.V2.Any.t()],
          multiple_of: float,
          vendor_extension: [Openapi.V2.NamedAny.t()]
        }
  defstruct [
    :required,
    :in,
    :description,
    :name,
    :type,
    :format,
    :items,
    :collection_format,
    :default,
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
    :enum,
    :multiple_of,
    :vendor_extension
  ]

  field :required, 1, type: :bool
  field :in, 2, type: :string
  field :description, 3, type: :string
  field :name, 4, type: :string
  field :type, 5, type: :string
  field :format, 6, type: :string
  field :items, 7, type: Openapi.V2.PrimitivesItems
  field :collection_format, 8, type: :string
  field :default, 9, type: Openapi.V2.Any
  field :maximum, 10, type: :double
  field :exclusive_maximum, 11, type: :bool
  field :minimum, 12, type: :double
  field :exclusive_minimum, 13, type: :bool
  field :max_length, 14, type: :int64
  field :min_length, 15, type: :int64
  field :pattern, 16, type: :string
  field :max_items, 17, type: :int64
  field :min_items, 18, type: :int64
  field :unique_items, 19, type: :bool
  field :enum, 20, repeated: true, type: Openapi.V2.Any
  field :multiple_of, 21, type: :double
  field :vendor_extension, 22, repeated: true, type: Openapi.V2.NamedAny
end

defmodule Openapi.V2.Paths do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          vendor_extension: [Openapi.V2.NamedAny.t()],
          path: [Openapi.V2.NamedPathItem.t()]
        }
  defstruct [:vendor_extension, :path]

  field :vendor_extension, 1, repeated: true, type: Openapi.V2.NamedAny
  field :path, 2, repeated: true, type: Openapi.V2.NamedPathItem
end

defmodule Openapi.V2.PrimitivesItems do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: String.t(),
          format: String.t(),
          items: Openapi.V2.PrimitivesItems.t(),
          collection_format: String.t(),
          default: Openapi.V2.Any.t(),
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
          enum: [Openapi.V2.Any.t()],
          multiple_of: float,
          vendor_extension: [Openapi.V2.NamedAny.t()]
        }
  defstruct [
    :type,
    :format,
    :items,
    :collection_format,
    :default,
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
    :enum,
    :multiple_of,
    :vendor_extension
  ]

  field :type, 1, type: :string
  field :format, 2, type: :string
  field :items, 3, type: Openapi.V2.PrimitivesItems
  field :collection_format, 4, type: :string
  field :default, 5, type: Openapi.V2.Any
  field :maximum, 6, type: :double
  field :exclusive_maximum, 7, type: :bool
  field :minimum, 8, type: :double
  field :exclusive_minimum, 9, type: :bool
  field :max_length, 10, type: :int64
  field :min_length, 11, type: :int64
  field :pattern, 12, type: :string
  field :max_items, 13, type: :int64
  field :min_items, 14, type: :int64
  field :unique_items, 15, type: :bool
  field :enum, 16, repeated: true, type: Openapi.V2.Any
  field :multiple_of, 17, type: :double
  field :vendor_extension, 18, repeated: true, type: Openapi.V2.NamedAny
end

defmodule Openapi.V2.Properties do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          additional_properties: [Openapi.V2.NamedSchema.t()]
        }
  defstruct [:additional_properties]

  field :additional_properties, 1, repeated: true, type: Openapi.V2.NamedSchema
end

defmodule Openapi.V2.QueryParameterSubSchema do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          required: boolean,
          in: String.t(),
          description: String.t(),
          name: String.t(),
          allow_empty_value: boolean,
          type: String.t(),
          format: String.t(),
          items: Openapi.V2.PrimitivesItems.t(),
          collection_format: String.t(),
          default: Openapi.V2.Any.t(),
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
          enum: [Openapi.V2.Any.t()],
          multiple_of: float,
          vendor_extension: [Openapi.V2.NamedAny.t()]
        }
  defstruct [
    :required,
    :in,
    :description,
    :name,
    :allow_empty_value,
    :type,
    :format,
    :items,
    :collection_format,
    :default,
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
    :enum,
    :multiple_of,
    :vendor_extension
  ]

  field :required, 1, type: :bool
  field :in, 2, type: :string
  field :description, 3, type: :string
  field :name, 4, type: :string
  field :allow_empty_value, 5, type: :bool
  field :type, 6, type: :string
  field :format, 7, type: :string
  field :items, 8, type: Openapi.V2.PrimitivesItems
  field :collection_format, 9, type: :string
  field :default, 10, type: Openapi.V2.Any
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
  field :enum, 21, repeated: true, type: Openapi.V2.Any
  field :multiple_of, 22, type: :double
  field :vendor_extension, 23, repeated: true, type: Openapi.V2.NamedAny
end

defmodule Openapi.V2.Response do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          description: String.t(),
          schema: Openapi.V2.SchemaItem.t(),
          headers: Openapi.V2.Headers.t(),
          examples: Openapi.V2.Examples.t(),
          vendor_extension: [Openapi.V2.NamedAny.t()]
        }
  defstruct [:description, :schema, :headers, :examples, :vendor_extension]

  field :description, 1, type: :string
  field :schema, 2, type: Openapi.V2.SchemaItem
  field :headers, 3, type: Openapi.V2.Headers
  field :examples, 4, type: Openapi.V2.Examples
  field :vendor_extension, 5, repeated: true, type: Openapi.V2.NamedAny
end

defmodule Openapi.V2.ResponseDefinitions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          additional_properties: [Openapi.V2.NamedResponse.t()]
        }
  defstruct [:additional_properties]

  field :additional_properties, 1, repeated: true, type: Openapi.V2.NamedResponse
end

defmodule Openapi.V2.ResponseValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          oneof: {atom, any}
        }
  defstruct [:oneof]

  oneof :oneof, 0
  field :response, 1, type: Openapi.V2.Response, oneof: 0
  field :json_reference, 2, type: Openapi.V2.JsonReference, oneof: 0
end

defmodule Openapi.V2.Responses do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response_code: [Openapi.V2.NamedResponseValue.t()],
          vendor_extension: [Openapi.V2.NamedAny.t()]
        }
  defstruct [:response_code, :vendor_extension]

  field :response_code, 1, repeated: true, type: Openapi.V2.NamedResponseValue
  field :vendor_extension, 2, repeated: true, type: Openapi.V2.NamedAny
end

defmodule Openapi.V2.Schema do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          _ref: String.t(),
          format: String.t(),
          title: String.t(),
          description: String.t(),
          default: Openapi.V2.Any.t(),
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
          enum: [Openapi.V2.Any.t()],
          additional_properties: Openapi.V2.AdditionalPropertiesItem.t(),
          type: Openapi.V2.TypeItem.t(),
          items: Openapi.V2.ItemsItem.t(),
          all_of: [Openapi.V2.Schema.t()],
          properties: Openapi.V2.Properties.t(),
          discriminator: String.t(),
          read_only: boolean,
          xml: Openapi.V2.Xml.t(),
          external_docs: Openapi.V2.ExternalDocs.t(),
          example: Openapi.V2.Any.t(),
          vendor_extension: [Openapi.V2.NamedAny.t()]
        }
  defstruct [
    :_ref,
    :format,
    :title,
    :description,
    :default,
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
    :additional_properties,
    :type,
    :items,
    :all_of,
    :properties,
    :discriminator,
    :read_only,
    :xml,
    :external_docs,
    :example,
    :vendor_extension
  ]

  field :_ref, 1, type: :string
  field :format, 2, type: :string
  field :title, 3, type: :string
  field :description, 4, type: :string
  field :default, 5, type: Openapi.V2.Any
  field :multiple_of, 6, type: :double
  field :maximum, 7, type: :double
  field :exclusive_maximum, 8, type: :bool
  field :minimum, 9, type: :double
  field :exclusive_minimum, 10, type: :bool
  field :max_length, 11, type: :int64
  field :min_length, 12, type: :int64
  field :pattern, 13, type: :string
  field :max_items, 14, type: :int64
  field :min_items, 15, type: :int64
  field :unique_items, 16, type: :bool
  field :max_properties, 17, type: :int64
  field :min_properties, 18, type: :int64
  field :required, 19, repeated: true, type: :string
  field :enum, 20, repeated: true, type: Openapi.V2.Any
  field :additional_properties, 21, type: Openapi.V2.AdditionalPropertiesItem
  field :type, 22, type: Openapi.V2.TypeItem
  field :items, 23, type: Openapi.V2.ItemsItem
  field :all_of, 24, repeated: true, type: Openapi.V2.Schema
  field :properties, 25, type: Openapi.V2.Properties
  field :discriminator, 26, type: :string
  field :read_only, 27, type: :bool
  field :xml, 28, type: Openapi.V2.Xml
  field :external_docs, 29, type: Openapi.V2.ExternalDocs
  field :example, 30, type: Openapi.V2.Any
  field :vendor_extension, 31, repeated: true, type: Openapi.V2.NamedAny
end

defmodule Openapi.V2.SchemaItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          oneof: {atom, any}
        }
  defstruct [:oneof]

  oneof :oneof, 0
  field :schema, 1, type: Openapi.V2.Schema, oneof: 0
  field :file_schema, 2, type: Openapi.V2.FileSchema, oneof: 0
end

defmodule Openapi.V2.SecurityDefinitions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          additional_properties: [Openapi.V2.NamedSecurityDefinitionsItem.t()]
        }
  defstruct [:additional_properties]

  field :additional_properties, 1, repeated: true, type: Openapi.V2.NamedSecurityDefinitionsItem
end

defmodule Openapi.V2.SecurityDefinitionsItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          oneof: {atom, any}
        }
  defstruct [:oneof]

  oneof :oneof, 0
  field :basic_authentication_security, 1, type: Openapi.V2.BasicAuthenticationSecurity, oneof: 0
  field :api_key_security, 2, type: Openapi.V2.ApiKeySecurity, oneof: 0
  field :oauth2_implicit_security, 3, type: Openapi.V2.Oauth2ImplicitSecurity, oneof: 0
  field :oauth2_password_security, 4, type: Openapi.V2.Oauth2PasswordSecurity, oneof: 0
  field :oauth2_application_security, 5, type: Openapi.V2.Oauth2ApplicationSecurity, oneof: 0
  field :oauth2_access_code_security, 6, type: Openapi.V2.Oauth2AccessCodeSecurity, oneof: 0
end

defmodule Openapi.V2.SecurityRequirement do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          additional_properties: [Openapi.V2.NamedStringArray.t()]
        }
  defstruct [:additional_properties]

  field :additional_properties, 1, repeated: true, type: Openapi.V2.NamedStringArray
end

defmodule Openapi.V2.StringArray do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: [String.t()]
        }
  defstruct [:value]

  field :value, 1, repeated: true, type: :string
end

defmodule Openapi.V2.Tag do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          external_docs: Openapi.V2.ExternalDocs.t(),
          vendor_extension: [Openapi.V2.NamedAny.t()]
        }
  defstruct [:name, :description, :external_docs, :vendor_extension]

  field :name, 1, type: :string
  field :description, 2, type: :string
  field :external_docs, 3, type: Openapi.V2.ExternalDocs
  field :vendor_extension, 4, repeated: true, type: Openapi.V2.NamedAny
end

defmodule Openapi.V2.TypeItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: [String.t()]
        }
  defstruct [:value]

  field :value, 1, repeated: true, type: :string
end

defmodule Openapi.V2.VendorExtension do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          additional_properties: [Openapi.V2.NamedAny.t()]
        }
  defstruct [:additional_properties]

  field :additional_properties, 1, repeated: true, type: Openapi.V2.NamedAny
end

defmodule Openapi.V2.Xml do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          namespace: String.t(),
          prefix: String.t(),
          attribute: boolean,
          wrapped: boolean,
          vendor_extension: [Openapi.V2.NamedAny.t()]
        }
  defstruct [:name, :namespace, :prefix, :attribute, :wrapped, :vendor_extension]

  field :name, 1, type: :string
  field :namespace, 2, type: :string
  field :prefix, 3, type: :string
  field :attribute, 4, type: :bool
  field :wrapped, 5, type: :bool
  field :vendor_extension, 6, repeated: true, type: Openapi.V2.NamedAny
end

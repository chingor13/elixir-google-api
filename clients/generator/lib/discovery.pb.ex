defmodule Discovery.V1.Annotations do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          required: [String.t()]
        }
  defstruct [:required]

  field :required, 1, repeated: true, type: :string
end

defmodule Discovery.V1.Any do
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

defmodule Discovery.V1.Auth do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          oauth2: Discovery.V1.Oauth2.t()
        }
  defstruct [:oauth2]

  field :oauth2, 1, type: Discovery.V1.Oauth2
end

defmodule Discovery.V1.Document do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kind: String.t(),
          discovery_version: String.t(),
          id: String.t(),
          name: String.t(),
          version: String.t(),
          revision: String.t(),
          title: String.t(),
          description: String.t(),
          icons: Discovery.V1.Icons.t(),
          documentation_link: String.t(),
          labels: [String.t()],
          protocol: String.t(),
          base_url: String.t(),
          base_path: String.t(),
          root_url: String.t(),
          service_path: String.t(),
          batch_path: String.t(),
          parameters: Discovery.V1.Parameters.t(),
          auth: Discovery.V1.Auth.t(),
          features: [String.t()],
          schemas: Discovery.V1.Schemas.t(),
          methods: Discovery.V1.Methods.t(),
          resources: Discovery.V1.Resources.t(),
          etag: String.t(),
          owner_domain: String.t(),
          owner_name: String.t(),
          version_module: boolean,
          canonical_name: String.t(),
          fully_encode_reserved_expansion: boolean,
          package_path: String.t()
        }
  defstruct [
    :kind,
    :discovery_version,
    :id,
    :name,
    :version,
    :revision,
    :title,
    :description,
    :icons,
    :documentation_link,
    :labels,
    :protocol,
    :base_url,
    :base_path,
    :root_url,
    :service_path,
    :batch_path,
    :parameters,
    :auth,
    :features,
    :schemas,
    :methods,
    :resources,
    :etag,
    :owner_domain,
    :owner_name,
    :version_module,
    :canonical_name,
    :fully_encode_reserved_expansion,
    :package_path
  ]

  field :kind, 1, type: :string
  field :discovery_version, 2, type: :string
  field :id, 3, type: :string
  field :name, 4, type: :string
  field :version, 5, type: :string
  field :revision, 6, type: :string
  field :title, 7, type: :string
  field :description, 8, type: :string
  field :icons, 9, type: Discovery.V1.Icons
  field :documentation_link, 10, type: :string
  field :labels, 11, repeated: true, type: :string
  field :protocol, 12, type: :string
  field :base_url, 13, type: :string
  field :base_path, 14, type: :string
  field :root_url, 15, type: :string
  field :service_path, 16, type: :string
  field :batch_path, 17, type: :string
  field :parameters, 18, type: Discovery.V1.Parameters
  field :auth, 19, type: Discovery.V1.Auth
  field :features, 20, repeated: true, type: :string
  field :schemas, 21, type: Discovery.V1.Schemas
  field :methods, 22, type: Discovery.V1.Methods
  field :resources, 23, type: Discovery.V1.Resources
  field :etag, 24, type: :string
  field :owner_domain, 25, type: :string
  field :owner_name, 26, type: :string
  field :version_module, 27, type: :bool
  field :canonical_name, 28, type: :string
  field :fully_encode_reserved_expansion, 29, type: :bool
  field :package_path, 30, type: :string
end

defmodule Discovery.V1.Icons do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          x16: String.t(),
          x32: String.t()
        }
  defstruct [:x16, :x32]

  field :x16, 1, type: :string
  field :x32, 2, type: :string
end

defmodule Discovery.V1.MediaUpload do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          accept: [String.t()],
          max_size: String.t(),
          protocols: Discovery.V1.Protocols.t(),
          supports_subscription: boolean
        }
  defstruct [:accept, :max_size, :protocols, :supports_subscription]

  field :accept, 1, repeated: true, type: :string
  field :max_size, 2, type: :string
  field :protocols, 3, type: Discovery.V1.Protocols
  field :supports_subscription, 4, type: :bool
end

defmodule Discovery.V1.Method do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          path: String.t(),
          http_method: String.t(),
          description: String.t(),
          parameters: Discovery.V1.Parameters.t(),
          parameter_order: [String.t()],
          request: Discovery.V1.Request.t(),
          response: Discovery.V1.Response.t(),
          scopes: [String.t()],
          supports_media_download: boolean,
          supports_media_upload: boolean,
          use_media_download_service: boolean,
          media_upload: Discovery.V1.MediaUpload.t(),
          supports_subscription: boolean,
          flat_path: String.t(),
          etag_required: boolean
        }
  defstruct [
    :id,
    :path,
    :http_method,
    :description,
    :parameters,
    :parameter_order,
    :request,
    :response,
    :scopes,
    :supports_media_download,
    :supports_media_upload,
    :use_media_download_service,
    :media_upload,
    :supports_subscription,
    :flat_path,
    :etag_required
  ]

  field :id, 1, type: :string
  field :path, 2, type: :string
  field :http_method, 3, type: :string
  field :description, 4, type: :string
  field :parameters, 5, type: Discovery.V1.Parameters
  field :parameter_order, 6, repeated: true, type: :string
  field :request, 7, type: Discovery.V1.Request
  field :response, 8, type: Discovery.V1.Response
  field :scopes, 9, repeated: true, type: :string
  field :supports_media_download, 10, type: :bool
  field :supports_media_upload, 11, type: :bool
  field :use_media_download_service, 12, type: :bool
  field :media_upload, 13, type: Discovery.V1.MediaUpload
  field :supports_subscription, 14, type: :bool
  field :flat_path, 15, type: :string
  field :etag_required, 16, type: :bool
end

defmodule Discovery.V1.Methods do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          additional_properties: [Discovery.V1.NamedMethod.t()]
        }
  defstruct [:additional_properties]

  field :additional_properties, 1, repeated: true, type: Discovery.V1.NamedMethod
end

defmodule Discovery.V1.NamedMethod do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          value: Discovery.V1.Method.t()
        }
  defstruct [:name, :value]

  field :name, 1, type: :string
  field :value, 2, type: Discovery.V1.Method
end

defmodule Discovery.V1.NamedParameter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          value: Discovery.V1.Parameter.t()
        }
  defstruct [:name, :value]

  field :name, 1, type: :string
  field :value, 2, type: Discovery.V1.Parameter
end

defmodule Discovery.V1.NamedResource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          value: Discovery.V1.Resource.t()
        }
  defstruct [:name, :value]

  field :name, 1, type: :string
  field :value, 2, type: Discovery.V1.Resource
end

defmodule Discovery.V1.NamedSchema do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          value: Discovery.V1.Schema.t()
        }
  defstruct [:name, :value]

  field :name, 1, type: :string
  field :value, 2, type: Discovery.V1.Schema
end

defmodule Discovery.V1.NamedScope do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          value: Discovery.V1.Scope.t()
        }
  defstruct [:name, :value]

  field :name, 1, type: :string
  field :value, 2, type: Discovery.V1.Scope
end

defmodule Discovery.V1.Oauth2 do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scopes: Discovery.V1.Scopes.t()
        }
  defstruct [:scopes]

  field :scopes, 1, type: Discovery.V1.Scopes
end

defmodule Discovery.V1.Parameter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          type: String.t(),
          _ref: String.t(),
          description: String.t(),
          default: String.t(),
          required: boolean,
          format: String.t(),
          pattern: String.t(),
          minimum: String.t(),
          maximum: String.t(),
          enum: [String.t()],
          enum_descriptions: [String.t()],
          repeated: boolean,
          location: String.t(),
          properties: Discovery.V1.Schemas.t(),
          additional_properties: Discovery.V1.Schema.t(),
          items: Discovery.V1.Schema.t(),
          annotations: Discovery.V1.Annotations.t()
        }
  defstruct [
    :id,
    :type,
    :_ref,
    :description,
    :default,
    :required,
    :format,
    :pattern,
    :minimum,
    :maximum,
    :enum,
    :enum_descriptions,
    :repeated,
    :location,
    :properties,
    :additional_properties,
    :items,
    :annotations
  ]

  field :id, 1, type: :string
  field :type, 2, type: :string
  field :_ref, 3, type: :string
  field :description, 4, type: :string
  field :default, 5, type: :string
  field :required, 6, type: :bool
  field :format, 7, type: :string
  field :pattern, 8, type: :string
  field :minimum, 9, type: :string
  field :maximum, 10, type: :string
  field :enum, 11, repeated: true, type: :string
  field :enum_descriptions, 12, repeated: true, type: :string
  field :repeated, 13, type: :bool
  field :location, 14, type: :string
  field :properties, 15, type: Discovery.V1.Schemas
  field :additional_properties, 16, type: Discovery.V1.Schema
  field :items, 17, type: Discovery.V1.Schema
  field :annotations, 18, type: Discovery.V1.Annotations
end

defmodule Discovery.V1.Parameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          additional_properties: [Discovery.V1.NamedParameter.t()]
        }
  defstruct [:additional_properties]

  field :additional_properties, 1, repeated: true, type: Discovery.V1.NamedParameter
end

defmodule Discovery.V1.Protocols do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          simple: Discovery.V1.Simple.t(),
          resumable: Discovery.V1.Resumable.t()
        }
  defstruct [:simple, :resumable]

  field :simple, 1, type: Discovery.V1.Simple
  field :resumable, 2, type: Discovery.V1.Resumable
end

defmodule Discovery.V1.Request do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          _ref: String.t(),
          parameter_name: String.t()
        }
  defstruct [:_ref, :parameter_name]

  field :_ref, 1, type: :string
  field :parameter_name, 2, type: :string
end

defmodule Discovery.V1.Resource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          methods: Discovery.V1.Methods.t(),
          resources: Discovery.V1.Resources.t()
        }
  defstruct [:methods, :resources]

  field :methods, 1, type: Discovery.V1.Methods
  field :resources, 2, type: Discovery.V1.Resources
end

defmodule Discovery.V1.Resources do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          additional_properties: [Discovery.V1.NamedResource.t()]
        }
  defstruct [:additional_properties]

  field :additional_properties, 1, repeated: true, type: Discovery.V1.NamedResource
end

defmodule Discovery.V1.Response do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          _ref: String.t()
        }
  defstruct [:_ref]

  field :_ref, 1, type: :string
end

defmodule Discovery.V1.Resumable do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          multipart: boolean,
          path: String.t()
        }
  defstruct [:multipart, :path]

  field :multipart, 1, type: :bool
  field :path, 2, type: :string
end

defmodule Discovery.V1.Schema do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          type: String.t(),
          description: String.t(),
          default: String.t(),
          required: boolean,
          format: String.t(),
          pattern: String.t(),
          minimum: String.t(),
          maximum: String.t(),
          enum: [String.t()],
          enum_descriptions: [String.t()],
          repeated: boolean,
          location: String.t(),
          properties: Discovery.V1.Schemas.t(),
          additional_properties: Discovery.V1.Schema.t(),
          items: Discovery.V1.Schema.t(),
          _ref: String.t(),
          annotations: Discovery.V1.Annotations.t(),
          read_only: boolean
        }
  defstruct [
    :id,
    :type,
    :description,
    :default,
    :required,
    :format,
    :pattern,
    :minimum,
    :maximum,
    :enum,
    :enum_descriptions,
    :repeated,
    :location,
    :properties,
    :additional_properties,
    :items,
    :_ref,
    :annotations,
    :read_only
  ]

  field :id, 1, type: :string
  field :type, 2, type: :string
  field :description, 3, type: :string
  field :default, 4, type: :string
  field :required, 5, type: :bool
  field :format, 6, type: :string
  field :pattern, 7, type: :string
  field :minimum, 8, type: :string
  field :maximum, 9, type: :string
  field :enum, 10, repeated: true, type: :string
  field :enum_descriptions, 11, repeated: true, type: :string
  field :repeated, 12, type: :bool
  field :location, 13, type: :string
  field :properties, 14, type: Discovery.V1.Schemas
  field :additional_properties, 15, type: Discovery.V1.Schema
  field :items, 16, type: Discovery.V1.Schema
  field :_ref, 17, type: :string
  field :annotations, 18, type: Discovery.V1.Annotations
  field :read_only, 19, type: :bool
end

defmodule Discovery.V1.Schemas do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          additional_properties: [Discovery.V1.NamedSchema.t()]
        }
  defstruct [:additional_properties]

  field :additional_properties, 1, repeated: true, type: Discovery.V1.NamedSchema
end

defmodule Discovery.V1.Scope do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          description: String.t()
        }
  defstruct [:description]

  field :description, 1, type: :string
end

defmodule Discovery.V1.Scopes do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          additional_properties: [Discovery.V1.NamedScope.t()]
        }
  defstruct [:additional_properties]

  field :additional_properties, 1, repeated: true, type: Discovery.V1.NamedScope
end

defmodule Discovery.V1.Simple do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          multipart: boolean,
          path: String.t()
        }
  defstruct [:multipart, :path]

  field :multipart, 1, type: :bool
  field :path, 2, type: :string
end

defmodule Discovery.V1.StringArray do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: [String.t()]
        }
  defstruct [:value]

  field :value, 1, repeated: true, type: :string
end

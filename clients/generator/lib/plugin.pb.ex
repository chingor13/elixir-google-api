defmodule Gnostic.Plugin.V1.Version do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          major: integer,
          minor: integer,
          patch: integer,
          suffix: String.t()
        }
  defstruct [:major, :minor, :patch, :suffix]

  field :major, 1, type: :int32
  field :minor, 2, type: :int32
  field :patch, 3, type: :int32
  field :suffix, 4, type: :string
end

defmodule Gnostic.Plugin.V1.Parameter do
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

defmodule Gnostic.Plugin.V1.Request do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source_name: String.t(),
          output_path: String.t(),
          parameters: [Gnostic.Plugin.V1.Parameter.t()],
          compiler_version: Gnostic.Plugin.V1.Version.t(),
          models: [Google.Protobuf.Any.t()]
        }
  defstruct [:source_name, :output_path, :parameters, :compiler_version, :models]

  field :source_name, 1, type: :string
  field :output_path, 2, type: :string
  field :parameters, 3, repeated: true, type: Gnostic.Plugin.V1.Parameter
  field :compiler_version, 4, type: Gnostic.Plugin.V1.Version
  field :models, 5, repeated: true, type: Google.Protobuf.Any
end

defmodule Gnostic.Plugin.V1.Message do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          level: integer,
          code: String.t(),
          text: String.t(),
          keys: [String.t()]
        }
  defstruct [:level, :code, :text, :keys]

  field :level, 1, type: Gnostic.Plugin.V1.Message.Level, enum: true
  field :code, 2, type: :string
  field :text, 3, type: :string
  field :keys, 4, repeated: true, type: :string
end

defmodule Gnostic.Plugin.V1.Message.Level do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  field :UNKNOWN, 0
  field :INFO, 1
  field :WARNING, 2
  field :ERROR, 3
  field :FATAL, 4
end

defmodule Gnostic.Plugin.V1.Messages do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          messages: [Gnostic.Plugin.V1.Message.t()]
        }
  defstruct [:messages]

  field :messages, 1, repeated: true, type: Gnostic.Plugin.V1.Message
end

defmodule Gnostic.Plugin.V1.Response do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          errors: [String.t()],
          files: [Gnostic.Plugin.V1.File.t()],
          messages: [Gnostic.Plugin.V1.Message.t()]
        }
  defstruct [:errors, :files, :messages]

  field :errors, 1, repeated: true, type: :string
  field :files, 2, repeated: true, type: Gnostic.Plugin.V1.File
  field :messages, 3, repeated: true, type: Gnostic.Plugin.V1.Message
end

defmodule Gnostic.Plugin.V1.File do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          data: String.t()
        }
  defstruct [:name, :data]

  field :name, 1, type: :string
  field :data, 2, type: :bytes
end

defmodule Generator.Definitions do
  use Protobuf, from: Path.wildcard(Path.expand("../../definitions/**/*.proto", __DIR__)), use_package_names: true
end
defmodule ConserjeGraphql.Types do
  use Absinthe.Schema.Notation

  alias ConserjeGraphql.Types

  import_types Types.User
end

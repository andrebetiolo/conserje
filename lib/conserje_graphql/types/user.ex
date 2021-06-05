defmodule ConserjeGraphql.Types.User do
  use Absinthe.Schema.Notation

  object :user do
    field :id, non_null(:id)
    field :identifier, non_null(:string)
    field :password_hash, non_null(:string)
  end
end

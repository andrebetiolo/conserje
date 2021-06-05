defmodule ConserjeGraphql.Schema do
  use Absinthe.Schema

  alias ConserjeGraphql.Resolvers.UsersResolver

  import_types ConserjeGraphql.Types

  query do
  @desc "Get all links"
    field :list_users, non_null(list_of(non_null(:user))) do
      resolve(&UsersResolver.list_users/3)
    end
  end
end

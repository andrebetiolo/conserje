defmodule ConserjeGraphql.Resolvers.UsersResolver do
  alias Conserje.Users

  def list_users(_root, _args, _info) do
    {:ok, Users.list_users}
  end
end

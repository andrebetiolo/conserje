defmodule Conserje.Repo do
  use Ecto.Repo,
    otp_app: :conserje,
    adapter: Ecto.Adapters.Postgres
end

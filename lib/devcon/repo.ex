defmodule Devcon.Repo do
  use Ecto.Repo,
    otp_app: :devcon,
    adapter: Ecto.Adapters.Postgres
end

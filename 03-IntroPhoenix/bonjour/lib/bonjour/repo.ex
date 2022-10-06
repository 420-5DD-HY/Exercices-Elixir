defmodule Bonjour.Repo do
  use Ecto.Repo,
    otp_app: :bonjour,
    adapter: Ecto.Adapters.Postgres
end

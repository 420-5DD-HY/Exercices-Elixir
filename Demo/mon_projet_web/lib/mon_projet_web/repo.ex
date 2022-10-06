defmodule MonProjetWeb.Repo do
  use Ecto.Repo,
    otp_app: :mon_projet_web,
    adapter: Ecto.Adapters.Postgres
end

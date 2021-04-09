defmodule PocMonorepo.Repo do
  use Ecto.Repo,
    otp_app: :poc_monorepo,
    adapter: Ecto.Adapters.Postgres
end

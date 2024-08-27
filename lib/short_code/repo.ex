defmodule ShortCode.Repo do
  use Ecto.Repo,
    otp_app: :short_code,
    adapter: Ecto.Adapters.Postgres
end

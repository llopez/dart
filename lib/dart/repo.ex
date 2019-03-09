defmodule Dart.Repo do
  use Ecto.Repo,
    otp_app: :dart,
    adapter: Ecto.Adapters.Postgres
end

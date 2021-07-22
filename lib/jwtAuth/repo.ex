defmodule JwtAuth.Repo do
  use Ecto.Repo,
    otp_app: :jwtAuth,
    adapter: Ecto.Adapters.MyXQL
end

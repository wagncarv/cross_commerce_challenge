defmodule DesafioDevCrossCommerce.Repo do
  use Ecto.Repo,
    otp_app: :desafio_dev_cross_commerce,
    adapter: Ecto.Adapters.Postgres
end

defmodule DesafioDevCrossCommerce.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application
  alias DesafioDevCrossCommerce.Counter.Counter

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      DesafioDevCrossCommerce.Repo,
      # Start the Telemetry supervisor
      DesafioDevCrossCommerceWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: DesafioDevCrossCommerce.PubSub},
      # Start the Endpoint (http/https)
      DesafioDevCrossCommerceWeb.Endpoint
      # Start a worker by calling: DesafioDevCrossCommerce.Worker.start_link(arg)
      # {DesafioDevCrossCommerce.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: DesafioDevCrossCommerce.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    DesafioDevCrossCommerceWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end

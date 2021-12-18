defmodule DesafioDevCrossCommerce.Client.Client do
  use Tesla
  plug Tesla.Middleware.BaseUrl, "http://challenge.dienekes.com.br/api/numbers"
  plug Tesla.Middleware.Headers, [{"content-type", "application/json"}]
  plug Tesla.Middleware.JSON

  plug Tesla.Middleware.Retry,
    delay: 500,
    max_retries: 5,
    max_delay: 10_000

  plug Tesla.Middleware.Timeout, timeout: 100_000

  alias DesafioDevCrossCommerce.Client.Behavior
  alias DesafioDevCrossCommerce.Error
  alias Tesla.Env

  @behaviour Behavior

  def get_numbers(page) do
    IO.inspect(page, label: "Page: #{page}")
    get("?page=#{page}")
    |> handle_get_numbers()
  end

  defp handle_get_numbers({:ok, %Env{body: %{"numbers" => numbers}}}), do: numbers
  defp handle_get_numbers({:ok, %Env{body: %{"numbers" => []}}}), do: []
  defp handle_get_numbers({:error, result}), do: {:error, Error.build(:error, result)}
  defp handle_get_numbers({:ok, %Env{body: %{"error" => result}}}), do: {:error, Error.build(:error, result)}
end

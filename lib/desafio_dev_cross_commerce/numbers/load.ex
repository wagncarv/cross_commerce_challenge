defmodule DesafioDevCrossCommerce.Numbers.Load do
  alias DesafioDevCrossCommerce.Client.Client
  alias DesafioDevCrossCommerce.Transform

  def load do
    Task.async_stream(1..10_000, fn number ->
      Client.get_numbers(number)
    end, [timeout: 15_000])
    |> Enum.map(fn {:ok, value} -> value end)
    |> List.flatten() |> Enum.count()
  end
end

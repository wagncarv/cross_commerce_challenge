defmodule DesafioDevCrossCommerce.Numbers.Get do
  alias DesafioDevCrossCommerce.{Number, Repo}

  def call do
    Number
    |> Repo.all()
    |> handle_call()
  end

  defp handle_call([%Number{} | _] = numbers) do
    Enum.map(numbers, fn %Number{number: number} -> number end)
  end
end

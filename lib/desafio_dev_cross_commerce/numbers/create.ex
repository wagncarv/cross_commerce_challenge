defmodule DesafioDevCrossCommerce.Numbers.Create do
  alias DesafioDevCrossCommerce.{Number, Repo}

  def call(params) do
    params
    |> IO.inspect(label: "PARAMS")
    |> Task.async_stream(
      fn number ->
        do_insert(number)
      end,
      timeout: 30_000
    )
    |> Enum.to_list()
  end

  def do_insert(param) do
    param
    |> Number.changeset()
    |> Repo.insert()
  end
end

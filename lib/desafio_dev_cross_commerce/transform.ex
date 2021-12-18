defmodule DesafioDevCrossCommerce.Transform do
  alias DesafioDevCrossCommerce.Error
  require Logger

  def transform(list) when is_list(list) do
    Logger.info("#{__MODULE__}.transform/1", ansi_color: :blue)
    check_list(call_transform(list, []), list)
  end

  def transform({:error, %Error{} = error}), do: {:error, error}

  defp check_list(transformed_list, initial_list) when initial_list != transformed_list do
    Logger.info("#{__MODULE__}.check_list/2", ansi_color: :blue)
    call_transform(transformed_list, [])
    |> check_list(transformed_list)
  end

  defp check_list(transformed_list, initial_list) when initial_list == transformed_list, do: transformed_list

  defp call_transform([first | [second | tail]], stack) do
    Logger.info("#{__MODULE__}.call_transform/2", ansi_color: :blue)
    [current_first, current_second] = change(first, second)
    call_transform([current_second | tail], stack ++ [current_first])
  end

  defp call_transform([first | []], stack), do: stack ++ [first]
  defp call_transform(_list = [], _stack), do: []

  defp change(elem1, elem2) do
    Logger.info("#{__MODULE__}.change/2", ansi_color: :blue)
    case elem1 <= elem2 do
      true -> [elem1, elem2]
      false -> [elem2, elem1]
    end
  end
end

defmodule DesafioDevCrossCommerce.Numbers.Retrieve do
    alias DesafioDevCrossCommerce.Error

    @max_attempts 1

    def retrieve_single do
        client().get_numbers(1)
        |> handle_get()
    end

    def retrieve(list \\ [], acc \\ [], page \\ 1, attempts \\ 0)
    def retrieve(list, acc, page, attempts) do
        result = client().get_numbers(page)
        handle_retrieve(result, acc, page, attempts)
    end

    defp handle_retrieve({:error, %Error{} = error}, _acc, _page, _attempts), do: {:error, error}

    defp handle_retrieve([], acc, _page, attempts) when attempts == @max_attempts, do: acc

    defp handle_retrieve([], acc, page, attempts) when attempts < @max_attempts do
        retrieve([], acc, page + 1, attempts + 1)
    end

    defp handle_retrieve(result, acc, page, _attempts) do
        retrieve(result, result ++ acc, page + 1, 0)
    end

    defp handle_get(numbers) when is_list(numbers), do: numbers
    defp handle_get({:error, %Error{}}), do: {:error, Error.build(:internal_server_error,"error")}

    defp client do
        Application.fetch_env!(:desafio_dev_cross_commerce, __MODULE__)[:get_numbers_adapter]
    end
end

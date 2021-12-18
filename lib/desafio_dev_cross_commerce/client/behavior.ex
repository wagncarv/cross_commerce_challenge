defmodule DesafioDevCrossCommerce.Client.Behavior do
    alias DesafioDevCrossCommerce.Error
    @callback get_numbers(integer()) :: list([integer()]) | {:error, Error.t()}
end

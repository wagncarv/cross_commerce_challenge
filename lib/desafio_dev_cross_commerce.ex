defmodule DesafioDevCrossCommerce do
  alias DesafioDevCrossCommerce.Numbers.Retrieve

  defdelegate get_numbers, to: Retrieve, as: :retrieve
  defdelegate get, to: Retrieve, as: :retrieve_single
end

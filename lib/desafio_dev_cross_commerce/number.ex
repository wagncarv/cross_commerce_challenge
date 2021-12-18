defmodule DesafioDevCrossCommerce.Number do
  use Ecto.Schema
  import Ecto.Changeset
  alias Ecto.Changeset

  @required_param [:number]
  @derive {Jason.Encoder, only: [:number]}

  schema "numbers" do
    field :number, :float
  end

  def changeset(param) do
    param = %{number: param}

    %__MODULE__{}
    |> cast(param, @required_param)
  end
end

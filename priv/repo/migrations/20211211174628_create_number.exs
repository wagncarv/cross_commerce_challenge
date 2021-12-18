defmodule DesafioDevCrossCommerce.Repo.Migrations.CreateNumber do
  use Ecto.Migration

  def change do
    create table(:numbers) do
      add :number, :float
    end
  end
end

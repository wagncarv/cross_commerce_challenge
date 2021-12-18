defmodule DesafioDevCrossCommerceWeb.NumbersView do
    use DesafioDevCrossCommerceWeb, :view

    alias DesafioDevCrossCommerce.Number

    def render("numbers.json", %{numbers: numbers}) do
      %{
        numbers: numbers
      }
    end
end

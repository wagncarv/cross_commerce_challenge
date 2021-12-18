defmodule DesafioDevCrossCommerceWeb.NumbersController do
    use DesafioDevCrossCommerceWeb, :controller

    alias DesafioDevCrossCommerce.Transform
    alias DesafioDevCrossCommerceWeb.FallbackController
    action_fallback FallbackController

    def show(conn, _params) do
      with list when is_list(list) <- DesafioDevCrossCommerce.get_numbers() do
        list = Transform.transform(list)
        conn
        |> put_status(:ok)
        |> render("numbers.json", numbers: list)
      end
    end
end

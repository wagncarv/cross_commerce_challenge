defmodule DesafioDevCrossCommerceWeb.FallbackController do
    use DesafioDevCrossCommerceWeb, :controller

    alias DesafioDevCrossCommerce.Error
    alias DesafioDevCrossCommerceWeb.ErrorView

    def call(conn, {:error, %Error{status: :error, result: result}}) do
        conn
        |> put_status(:internal_server_error)
        |> put_view(ErrorView)
        |> render("error.json", errors: result, status: :internal_server_error)
    end

    def call(conn, {:error, %Error{status: status, result: result}}) do
        conn
        |> put_status(status)
        |> put_view(ErrorView)
        |> render("error.json", errors: result, status: status)
    end

    def call(conn, {:error, %Error{result: result}}) do
        conn
        |> put_status(:internal_server_error)
        |> put_view(ErrorView)
        |> render("error.json", errors: result, status: :internal_server_error)
    end

    def call(conn, nil) do
        conn
        |> put_status(:bad_request)
        |> put_view(ErrorView)
        |> render("error.json", errors: nil, status: :bad_request)
    end

end

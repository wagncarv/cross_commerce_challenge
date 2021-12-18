ExUnit.start()
Ecto.Adapters.SQL.Sandbox.mode(DesafioDevCrossCommerce.Repo, :manual)

Mox.defmock(
    DesafioDevCrossCommerce.Client.ClientMock, for: DesafioDevCrossCommerce.Client.Behavior
)

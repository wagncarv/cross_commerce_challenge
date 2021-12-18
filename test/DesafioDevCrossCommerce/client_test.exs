defmodule DesafioDevCrossCommerce.ClientTest do
  use DesafioDevCrossCommerce.DataCase, async: true
  import Mox
  alias DesafioDevCrossCommerce.Client.Client
  alias DesafioDevCrossCommerce.Client.ClientMock

  describe "get_numbers/1" do
    test "When the page param is valid, returns a number list" do
      expect(ClientMock, :get_numbers, fn 1 ->
        [
          0.4181707133672159, 0.4446014940576127, 0.4135426519101487, 0.3364303523294636,
          0.2245623856417824, 0.6501239000539522, 0.6354200131296106, 0.5998745794215936,
          0.5000394301387743, 0.038535707538389585, 0.015621683926585785,
          0.11919252546814178, 0.5887652298728361, 0.3039725579091457
        ]
      end)
      numbers = Client.get_numbers(1) |> IO.inspect(label: "MOCK")

      assert is_list(numbers)
      assert Enum.count(numbers) > 0
    end

    test "When the page param is off limit, returns []" do
      numbers = Client.get_numbers(10_001)

      assert numbers == []
    end

    test "When the page param is invalid, returns nil" do
      numbers = Client.get_numbers(0)
      assert is_nil(numbers)
    end
  end
end

defmodule Test do
  alias DesafioDevCrossCommerce.Transform
  require Logger
  #     alias DesafioDevCrossCommerce.Client.Client
  #     alias DesafioDevCrossCommerce.Counter.Counter
  #     alias DesafioDevCrossCommerce.Number
  #     alias DesafioDevCrossCommerce.Numbers.Create
  #     alias DesafioDevCrossCommerce.Numbers.Get

  def test do

    List.insert_at([1, 2, 3, 4], -1, 15)
    # [
    #   ok: [0.8896308626425515, 0.4737659948377928, 0.2760016496922324],
    # ok: [0.23507920866132925, 0.015625792813700815, 0.5339942144264163]
    # ]
    # |> Enum.map(fn {:ok, value} -> value end)
  end
end


list = [
  0.4181707133672159, 0.4446014940576127, 0.4135426519101487, 0.3364303523294636,
  0.2245623856417824, 0.6501239000539522, 0.6354200131296106, 0.5998745794215936,
  0.5000394301387743, 0.038535707538389585, 0.015621683926585785,
  0.11919252546814178, 0.5887652298728361, 0.3039725579091457,
  0.1774558105104917, 0.42900248202339797, 0.2601173525819016,
  0.4266699497985482, 0.3760371623556028, 0.6254643842176814, 0.7470780910389199,
  0.09523284650931393, 0.4197972190472616, 0.40778647860649697,
  0.6028288834108786, 0.7704953024682469, 0.7643929330519492, 0.1784777603458092,
  0.44926757204940776, 0.011586609375527822, 0.5088395614075161,
  0.18797536551294064, 0.5364310377795491, 0.3320548566325706, 0.886539318614332,
  0.6408248082083885, 0.9965974838136935, 0.09452772419663746,
  0.6150095041650963, 0.10143270630235739, 0.33155629962303423,
  0.4418172374889151, 0.4309854323048215, 0.18244326454164028,
  0.9935247746182209, 0.6975804106481276, 0.8577458838473675, 0.886965433852159,
  0.286437843368036, 0.7625028380202858
]
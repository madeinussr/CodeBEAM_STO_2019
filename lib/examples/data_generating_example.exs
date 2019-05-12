contract = [
  %{name: :a, opts: [type: :integer, numericality: %{gt: 0, lt: 10}]},
  %{name: :b, opts: [type: :string, length: %{in: 2..10}]}
]

contract |> ExopData.generate() |> Enum.take(10) |> IO.inspect()

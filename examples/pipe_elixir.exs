swapcase = fn l ->
  case String.upcase(l) do
    ^l ->
      String.downcase(l)
    _ ->
      String.upcase(l)
  end
end

"Tech Talks"
  |> String.split("")
  |> Enum.map(swapcase)
  |> Enum.join()
  |> String.split()
  |> Enum.reverse()
  |> Enum.join(" ")
  |> IO.puts()

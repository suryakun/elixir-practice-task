defmodule FizzBuzz do

  def downto(n) do
    1..n |> Enum.map(&_mapping/1)
  end

  defp _mapping(n) do
    cond do
      rem(n,3) == 0 and rem(n,5) == 0 ->
        "FizzBuzz"
      rem(n,3) == 0 ->
        "Fizz"
      rem(n,5) == 0 ->
        "FizzBuzz"
      true ->
        n
    end
  end

end

defmodule SimpleFizzBuzz do

  def downto(n) when n > 0, do: 1..n |> Enum.map(&fizz/1)

  defp fizz(n), do: buzz(n, rem(n,3), rem(n,5))

  defp buzz(_n, 0, 0), do: "FizzBuzz"

  defp buzz(_n, 0, _v), do: "Fizz"

  defp buzz(_n, _v, 0), do: "Buzz"

  defp buzz(n, _v, _p), do: n

end

defmodule Users do
  dave = %{name: "Dave", state: "TX", like: "Programming"}
  case dave do
    %{state: some_state} = person ->
      IO.puts "#{person.name} lives in #{some_state}"
    _ ->
      IO.puts "NO Match"
  end
end


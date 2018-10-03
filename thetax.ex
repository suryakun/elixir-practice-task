defmodule Tax do

  def generate() do
    {:ok, file} = File.open("data.txt")
    header = IO.read(file, :line) |> String.trim
    head = String.split(header, ",")
    iterate(head, file, [])
  end

  def iterate(header, file, result) do
    f = IO.read(file, :line)
    case f do
      :eof ->
        result
      _ ->
        tr = String.trim(f) |> String.split(",")
        concat = Enum.zip(header, tr) |> Enum.into(%{})
        iterate(header, file, result ++ [concat])
    end
  end

end

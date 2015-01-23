defmodule PrimeWords do
  def to_int_list word do
    word |> String.to_char_list |>
    Enum.map fn
      x when x < 97 -> x - 38
      x -> x - 96
    end
  end

  def to_int word do
    word |> to_int_list |> Enum.reduce fn
      x, acc -> acc + x
    end
  end

  def prime? word do
    word |> to_int |> Primes.prime?
  end
end

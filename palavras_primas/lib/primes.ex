defmodule Primes do
  def prime? number do
    prime? number, number, nil
  end

  defp prime?( number, last_div, 0 )
    when last_div != 1 and last_div != number do
      false
  end

  defp prime?(_, last_div, _) when last_div <= 0 do
    false
  end

  defp prime?(number, last_div, _) 
    when last_div < number / 2 or last_div == 1 do
      true
  end

  defp prime?( number, last_div, _ ) do
    new_div = last_div - 1
    mod     = number |> rem( new_div )

    number |> prime? new_div, mod
  end

end

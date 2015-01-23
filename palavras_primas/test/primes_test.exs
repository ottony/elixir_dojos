defmodule PrimesTest do
  use ExUnit.Case

  import Primes

  test "1 and 2 is prime" do
    primes? = [1, 2] |> Enum.map fn n -> prime? n end

    assert primes? == [true, true]
  end

  test "< 0 is not prime" do
    primes? = [0, -1] |> Enum.map fn n -> prime? n end
    assert primes? == [false, false]
  end

  test "3 is prime" do
    assert 3 |> prime?
  end

  test "4 is not prime" do
    refute 4 |> prime?
  end

  test "5 is not prime" do
    assert 5 |> prime?
  end

  test "7 is prime" do
    assert 7 |> prime?
  end

  test "9 is not prime" do
    refute 0 |> prime?
  end

  test "91 is not prime" do
    refute 91 |> prime?
  end

  test "1013 is prime" do
    assert 1013 |> prime?
  end
end

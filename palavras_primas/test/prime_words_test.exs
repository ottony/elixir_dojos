defmodule PrimeWordsTest do
  use ExUnit.Case

  import PrimeWords

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "represent a by 1" do
      assert "a" |> to_int_list == [1]
  end

  test "represent A by 27" do
    assert "A" |> to_int_list == [27]
  end

  test "represent z by 26" do
    assert "z" |> to_int_list == [26]
  end

  test "represent Z by 54" do
    assert "Z" |> to_int_list == [52]
  end

  test "represent sequence of letters" do
    expected = [1, 2, 3, 4, 27, 28, 29 , 30]
    assert "abcdABCD" |> to_int_list == expected
  end

  test "convert 'abcd' to integer" do
    assert "abcd" |> to_int == 1+2+3+4
  end

  test "convert 'AbCd' to integer" do
    assert "AbCd" |> to_int == 27+2+29+4
  end

  test "'abcd' is not prime" do
    refute "abcd" |> prime?
  end

  test "'aabcd' is prime" do
    assert "aabcd" |> prime?
  end

  test "to finish, 'ottony' is prime word" do
    assert "ottony" |> prime?
  end
end

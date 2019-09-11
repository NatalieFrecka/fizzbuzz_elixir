import Fizzbuzz

defmodule FizzbuzzTest do
  use ExUnit.Case

  test "One" do
    assert fizzbuzz(1) == 1
  end

  test "Two" do
    assert fizzbuzz(2) == 2
  end

  test "Three" do
    assert fizzbuzz(3) == "Fizz"
  end

  test "Four" do
    assert fizzbuzz(4) == 4
  end

  test "Five" do
    assert fizzbuzz(5) == "Buzz"
  end

  test "Six" do
    assert fizzbuzz(6) == "Fizz"
  end

  test "Seven" do
    assert fizzbuzz(7) == 7
  end

  test "Eight" do
    assert fizzbuzz(8) == 8
  end

  test "Nine" do
    assert fizzbuzz(9) == "Fizz"
  end

  test "Ten" do
    assert fizzbuzz(10) == "Buzz"
  end

  test "Eleven" do
    assert fizzbuzz(11) == 11
  end

  test "Twelve" do
    assert fizzbuzz(12) == "Fizz"
  end

  test "Thirteen" do
    assert fizzbuzz(13) == 13
  end

  test "Fourteen" do
    assert fizzbuzz(14) == 14
  end

  test "Fifteen" do
    assert fizzbuzz(15) == "FizzBuzz"
  end

  test "Sixteen" do
    assert_raise ArgumentError, "Not in range!", fn ->
      fizzbuzz(16) == 16
    end
  end

  test "NAN" do
    assert fizzbuzz("15") == "NAN"
  end
end

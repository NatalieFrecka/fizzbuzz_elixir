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
    assert fizzbuzz(16) == 16
  end

  test "Seventeen" do
    assert fizzbuzz(17) == 17
  end

  test "Eighteen" do
    assert fizzbuzz(18) == "Fizz"
  end

  test "Nineteen" do
    assert fizzbuzz(19) == 19
  end

  test "Twenty" do
    assert fizzbuzz(20) == "Buzz"
  end

  test "Twenty-one" do
    assert fizzbuzz(21) == "Fizz"
  end

  test "Twenty-two" do
    assert fizzbuzz(22) == 22
  end

  test "Twenty-three" do
    assert fizzbuzz(23) == 23
  end

  test "Twenty-four" do
    assert fizzbuzz(24) == "Fizz"
  end

  test "Twenty-five" do
    assert fizzbuzz(25) == "Buzz"
  end

  test "Twenty-six" do
    assert fizzbuzz(26) == 26
  end

  test "Twenty-seven" do
    assert fizzbuzz(27) == "Fizz"
  end

  test "Twenty-eight" do
    assert fizzbuzz(28) == 28
  end

  test "Twenty-nine" do
    assert fizzbuzz(29) == 29
  end

  test "Thirty" do
    assert fizzbuzz(30) == "FizzBuzz"
  end

  @tag :skip
  test "NAN" do
    assert fizzbuzz("15") == "NAN"
  end
end

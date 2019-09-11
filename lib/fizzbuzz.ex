defmodule Fizzbuzz do
  def fizzbuzz(input) when rem(input, 15) == 0, do: "FizzBuzz"
  def fizzbuzz(input) when rem(input, 3) == 0, do: "Fizz"
  def fizzbuzz(input) when rem(input, 5) == 0, do: "Buzz"
  def fizzbuzz(input) when is_integer(input), do: input
  def fizzbuzz(_), do: "NAN"
end

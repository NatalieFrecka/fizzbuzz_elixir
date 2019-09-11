defmodule Fizzbuzz do
  def fizzbuzz(input) do
    case {rem(input, 3), rem(input, 5)} do
      {0, 0} -> "FizzBuzz"
      {0, _} -> "Fizz"
      {_, 0} -> "Buzz"
      _ -> input
    end
  end
end

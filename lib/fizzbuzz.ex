defmodule Fizzbuzz do
  def fizzbuzz(input) do
    cond do
         rem(input, 15) == 0 -> "FizzBuzz"
         rem(input, 3) == 0 -> "Fizz"
         rem(input, 5) == 0 -> "Buzz"
         true -> input
    end
  end
end

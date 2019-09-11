defmodule Fizzbuzz.Guards do
  defguardp in_range(input) when input in 1..15
  defguard is_fizz(input) when rem(input, 3) == 0 and in_range(input)
  defguard is_buzz(input) when rem(input, 5) == 0 and in_range(input)
  defguard is_fizzbuzz(input) when is_fizz(input) and is_buzz(input)
  defguard is_int_in_range(input) when is_integer(input) and in_range(input)
  defguard is_int_not_in_range(input) when is_integer(input) and not in_range(input)
end

defmodule Fizzbuzz do
  import Fizzbuzz.Guards

  def fizzbuzz(input) when is_fizzbuzz(input), do: "FizzBuzz"
  def fizzbuzz(input) when is_fizz(input), do: "Fizz"
  def fizzbuzz(input) when is_buzz(input), do: "Buzz"
  def fizzbuzz(input) when is_int_in_range(input), do: input
  def fizzbuzz(input) when is_int_not_in_range(input), do: raise ArgumentError, message: "Not in range!"
  def fizzbuzz(_), do: "NAN"
end

defmodule Fizzbuzz.Guards do
  defguard is_fizz(input) when rem(input, 3) == 0
  defguard is_buzz(input) when rem(input, 5) == 0
  defguard is_fizzbuzz(input) when is_fizz(input) and is_buzz(input)
end

defmodule Fizzbuzz do
  import Fizzbuzz.Guards

  def fizzbuzz(input) when is_fizzbuzz(input), do: "FizzBuzz"
  def fizzbuzz(input) when is_fizz(input), do: "Fizz"
  def fizzbuzz(input) when is_buzz(input), do: "Buzz"
  def fizzbuzz(input) when is_integer(input), do: input
  def fizzbuzz(_), do: "NAN"

end

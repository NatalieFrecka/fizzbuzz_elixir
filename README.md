# Fizzbuzz

## Pattern Matching

##### The match and pin operators
`x = 1` >> `1`

`2 = x` >> `** (MatchError) no match of right hand side value: 1`

`^x = 2` >> `** (MatchError) no match of right hand side value: 1`

#### Assignment
`{a, b, c} = {:hello, "world", 42}`

`{:ok, result} = {:ok, 13}` >> `{:ok, 13}`

`{:ok, result} = {:error, :oops}` >> `** (MatchError)`

`list = [1, 2, 3]` >> `[1, 2, 3]`

`[head | tail] = list` >> `[1, 2, 3]`

`head` >> `1`

`tail` >> `[2, 3]`

`[0 | list]` >> `[0, 1, 2, 3]`

#### Case

```
case {1, 2, 3} do
    {4, 5, 6} ->
        "This clause won't match"
    {1, x, 3} ->
        "This clause will match and bind x to 2 in this clause"
    _ ->
        "This clause would match any value"
end
```

## Guards

#### Allowed expressions
- Comparison operators ` (==, !=, ===, !==, >, >=, <, <=)`
- Strictly boolean operators ` (and, or, not)`
- Arithmetic unary and binary operators` (+, -, +, -, *, /)`
- `in` and `not int`
- Type-check functions `(is_list, is_number)`, etc
- Functions that work on built-in datatypes `(abs/1, map_size/1)`, etc

#### Case
```
case {1, 2, 3} do
    {1, x, 3} when x > 0 ->
        "Will match"
    _ ->
        "Would match, if guard condition were not satisfied"
end
```

#### Anonymous functions
```
f = fn
    x, y when x > 0 -> x + y
    x, y -> x * y
end
```

`f.(1, 3)` >> `4`

`f.(-1, 3)` >> `-3`

#### Function Clauses

```
def foo(x) when is_integer(x), do: x
def foo(x) when is_float(x), do: round(x)
def foo(_), do: raise ArgumentError, message: "NAN"
```

## Macros
"Macros in Elixir lets you perform syntactic extensions, which are expanded to before a program executes. We use macros to transform our internal program structure by treating code as data, and thus metaprogram."

#### Quote
The internal representation of any expression.

`quote do: sum(1, 2, 3)` >> `{:sum, [], [1, 2, 3]}`

The first element is the function name, the second is a keyword list containing metadata and the third is the arguments list.

`quote do: 1 + 2` >> `{:+, [context: Elixir, import: Kernel], [1, 2]}`

#### Unquote
Inject some other particular chunk of code inside the representation we want to retrieve

`number = 13`

`Macro.to_string(quote do: 11 + number)` >> `"11 + number"`

`Macro.to_string(quote do: 11 + unquote(number))` >> `"11 + 13"`
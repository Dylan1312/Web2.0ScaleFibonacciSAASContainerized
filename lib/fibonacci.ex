defmodule Fibonacci do
  def fib(a) do
    cond do
      a <= 0 or a >= 100 ->
        raise ArgumentError, message: "argument must be greater than 0 and less than 100"
      a > 2 ->
        fib(a-1) + fib(a-2)
      true ->
        1
    end
  end
end

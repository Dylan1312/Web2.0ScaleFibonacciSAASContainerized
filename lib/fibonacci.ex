defmodule Fibonacci do
  def fib(a, memo \\ %{}) do
    
    if Map.has_key?(memo, a) do
      Map.get(memo, a)
    else
      cond do
        a <= 0 or a >= 100 ->
          raise ArgumentError, message: "argument must be greater than 0 and less than 100"
        a > 2 ->
          f1 = fib(a-2, memo)
          Map.put(memo, a-2, f1)
          f1 + fib(a-1, memo)
        true ->
          1
      end
    end
  end
end

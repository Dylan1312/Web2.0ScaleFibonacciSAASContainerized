defmodule Fibonacci do
  def fib(a, memo \\ %{}) do
    
    if Map.has_key?(memo, a) do
      {Map.get(memo, a), memo}
    else
      cond do
        a <= 0 or a >= 100 ->
          raise ArgumentError, message: "argument must be greater than 0 and less than 100"
        a > 2 ->
          {f1, new_memo1} = fib(a-1, memo)
          {f2, new_memo2} = fib(a-2, new_memo1)
          {f1 + f2, Map.put(new_memo2, a, f1 + f2)}
        true ->
          {1, memo}
      end
    end
  end
end

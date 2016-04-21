defmodule FibonacciTest do
  use ExUnit.Case

  doctest Fibonacci

  test "test fib 1" do
    {result, memo} = Fibonacci.fib(1)
    assert result == 1
  end

  test "test fib 2" do
    {result, memo} = Fibonacci.fib(2)
    assert result == 1
  end

  test "test fib 3" do
    {result, memo} = Fibonacci.fib(3)
    assert result == 2
  end

  test "test fib 30" do
    {result, memo} = Fibonacci.fib(30)
    assert result == 832040
  end

  test "test fib 0" do
    assert_raise ArgumentError, fn ->
      Fibonacci.fib(0)
    end
  end

  test "test fib 100" do
    assert_raise ArgumentError, fn ->
      Fibonacci.fib(100)
    end
  end
end

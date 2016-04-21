defmodule FibonacciTest do
  use ExUnit.Case

  doctest Fibonacci

  test "test fib 1" do
    assert Fibonacci.fib(1) == 1
  end

  test "test fib 2" do
    assert Fibonacci.fib(2) == 1
  end

  test "test fib 3" do
    assert Fibonacci.fib(3) == 2
  end

  test "test fib 99" do
    assert Fibonacci.fib(99) == 218922995834555169026
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

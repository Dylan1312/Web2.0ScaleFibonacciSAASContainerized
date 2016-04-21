defmodule WebService.Handler do

  def init({:tcp, :http}, req, opts) do
    headers = [{"content-type", "text.plain" }]
    {param, req} = :cowboy_req.binding(:n, req)
    body = to_string(Fibonacci.fib(String.to_integer(param)))
    {:ok, resp} = :cowboy_req.reply(200, headers, body, req)
    {:ok, resp, opts} 
  end

  def handle(req, state) do
    {:ok, req, state}
  end

  def terminate(_reason, _req, _state) do
    :ok
  end

  def fib_wrapper(n) do

  end
end

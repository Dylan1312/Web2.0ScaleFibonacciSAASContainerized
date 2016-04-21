defmodule WebService.Handler do

  def init({:tcp, :http}, req, opts) do


    {param, req} = :cowboy_req.binding(:n, req)
    start_time = :os.system_time(:milli_seconds)
    body = to_string(Fibonacci.fib(String.to_integer(param)))
    finish_time = :os.system_time(:milli_seconds)
    headers = [{"content-type", "text.plain" }, {"x_fib_time", to_string(finish_time-start_time)}]
    {:ok, resp} = :cowboy_req.reply(200, headers, body, req)
    {:ok, resp, opts} 
  end

  def handle(req, state) do
    {:ok, req, state}
  end

  def terminate(_reason, _req, _state) do
    :ok
  end
end

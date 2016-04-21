defmodule WebService do

  routes = [
    {"/", WebService.Handler, []}
  ]

  # Let Cowboy know about our routes
  dispatch = :cowboy_router.compile([{:_, routes}])

  opts = [port: 80]
  env = [dispatch: dispatch]
  {:ok, _pid} = :cowboy.start_http(:http, 100, opts, [env: env])
  
end

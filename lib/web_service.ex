defmodule WebService do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false
    
    children =  [
      worker(__MODULE__, [], function: :run)
    ]

    opts = [strategy: :one_for_one, name: WebService.Supervisor]
    Supervisor.start_link(children, opts)
  end

  def run do 
    routes = [
    #      {"/", WebService.Handler, []},
      {"/brag/fib/:n", WebService.Handler, []}
    ]

   # Let Cowboy know about our routes
    dispatch = :cowboy_router.compile([{:_, routes}])

    opts = [port: 80]
    env = [dispatch: dispatch]
    {:ok, _pid} = :cowboy.start_http(:http, 100, opts, [env: env])
  end 
  
end

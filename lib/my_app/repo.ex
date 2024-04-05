defmodule MyApp.Repo do
  use Ecto.Repo,
    otp_app: :my_app,
    adapter: Ecto.Adapters.Postgres

  def replica do
    Application.get_env(:my_app, :replicas)
    |> Enum.random()
    |> elem(0)
  end
end

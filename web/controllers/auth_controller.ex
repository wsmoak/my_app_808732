defmodule MyApp_808732.AuthController do
  use MyApp_808732.Web, :controller

  def index(conn, _params) do
    redirect conn, external: Fitbit.authorize_url!(scope: "settings sleep")
  end

  def callback(conn, %{"code" => code}) do
    token = Fitbit.get_token!(code: code)
    IO.inspect token
    redirect conn, to: "/"
  end

end

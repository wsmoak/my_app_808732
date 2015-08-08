defmodule MyApp_808732.User do
  use MyApp_808732.Web, :model

  schema "users" do
    field :name, :string
    field :email, :string
    field :user_id, :string
    field :access_token, :binary
    field :refresh_token, :binary
    field :expires_at, Ecto.DateTime

    timestamps
  end

  @required_fields ~w(name email user_id access_token refresh_token expires_at)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
defmodule MyApp_808732.UserTest do
  use MyApp_808732.ModelCase

  alias MyApp_808732.User

  @valid_attrs %{access_token: "some content", email: "some content", expires_at: %{day: 17, hour: 14, min: 0, month: 4, year: 2010}, name: "some content", refresh_token: "some content", user_id: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = User.changeset(%User{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = User.changeset(%User{}, @invalid_attrs)
    refute changeset.valid?
  end
end

defmodule MyApp_808732.PageControllerTest do
  use MyApp_808732.ConnCase

  test "GET /" do
    conn = get conn(), "/"
    assert html_response(conn, 200) =~ "Welcome to Phoenix!"
  end
end

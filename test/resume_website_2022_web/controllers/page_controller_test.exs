defmodule ResumeWebsite2022Web.PageControllerTest do
  use ResumeWebsite2022Web.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "Welcome to Phoenix!"
  end
end

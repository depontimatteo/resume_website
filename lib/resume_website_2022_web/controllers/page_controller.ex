defmodule ResumeWebsite2022Web.PageController do
  use ResumeWebsite2022Web, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end

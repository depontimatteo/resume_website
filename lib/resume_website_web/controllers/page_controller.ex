defmodule ResumeWebsiteWeb.PageController do
  use ResumeWebsiteWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end

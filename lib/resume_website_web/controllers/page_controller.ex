defmodule ResumeWebsiteWeb.PageController do
  alias ResumeWebsiteWeb.ApiController
  use ResumeWebsiteWeb, :controller

  def index(conn, _params) do

    bio = ApiController.get_bio(conn, %{"language_id"=>"it"})

    render(conn, "index.html")
  end
end

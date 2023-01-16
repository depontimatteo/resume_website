defmodule ResumeWebsiteWeb.PageController do
  alias ResumeWebsiteWeb.ApiController
  use ResumeWebsiteWeb, :controller

  def index(conn, _params) do

    render(conn, "index.html", bio: ApiController.get_bio(conn, %{"language_id"=>"it"}))

  end
end

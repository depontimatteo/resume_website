defmodule ResumeWebsiteWeb.ApiController do
  @moduledoc """
  This module handles echo requests and replies back
  with an echo JSON containing the word used by the request.
  """

  use ResumeWebsiteWeb, :controller

  def get_bio(conn, params) do
    path = Path.join(File.cwd!(), "assets/yaml/bio_#{params["language_id"]}.yaml")
    {:ok, bio} = YamlElixir.read_from_file(path)
    json(conn, bio)
  end
end

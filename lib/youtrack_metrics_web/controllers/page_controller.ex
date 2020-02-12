defmodule YoutrackMetricsWeb.PageController do
  use YoutrackMetricsWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end

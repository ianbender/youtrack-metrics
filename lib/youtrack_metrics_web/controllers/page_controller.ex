defmodule YoutrackMetricsWeb.PageController do
  use YoutrackMetricsWeb, :controller

  alias YoutrackMetrics.{Repo, Issue}

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def create(conn, %{"fields" => fields}) do
    IO.inspect(fields)
    Repo.insert(%Issue{data: fields})
    json(conn, fields)
  end
end

defmodule ShortCodeWeb.LinkLive.Index do
  use ShortCodeWeb, :live_view

  alias ShortCode.Links
  #alias ShortCode.Links.Link



@impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, :links, list_links())}
  end

  @impl true
  def handle_params(_params, _url, socket) do
    {:noreply, assign(socket, :links, list_links())}
  end



  defp list_links do
    Links.list_links() # This should be a function that fetches all links from the database
  end
end

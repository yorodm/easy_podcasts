defmodule EasypodcastsWeb.ChannelView do
  use EasypodcastsWeb, :view
  alias Easypodcasts.Episodes.EpisodeAudio
  require EEx

  EEx.function_from_file(:def, :feed, "lib/easypodcasts_web/templates/channel/feed.xml.eex", [
    :assigns
  ])

  def render("feed.xml", %{channel: channel}) do
    feed(channel)
  end

  defp clear_ampersand(nil), do: ""
  defp clear_ampersand(string), do: String.replace(string, "&", "&amp;")
end

module ArtistsHelper
  def display_artist(artist)
    if artist.present?
      # edit_song_path(artist)
      "<a href='#{artist_path(artist)}</a>".html_safe
    else
      "<a href='#{edit_song_path(artist)}</a>".html_safe
      # artist_path(artist)
    end
  end
end

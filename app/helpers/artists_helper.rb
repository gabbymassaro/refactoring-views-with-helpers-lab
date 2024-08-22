module ArtistsHelper
  def display_artist(artist)
    if artist.present?
      edit_song_path(artist)
    else
      artist_path(artist)
    end
  end
end

module ArtistsHelper
  def artist_name(song)
    song.artist_name if song.artist.present?
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
  end
end

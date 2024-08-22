class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    artist&.name
  end

  def artist_name=(name)
    if name.present?
      self.artist = Artist.find_or_create_by(name: name)
    else
      self.artist = nil
    end
  end
end

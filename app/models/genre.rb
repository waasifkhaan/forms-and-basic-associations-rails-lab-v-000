class Genre < ActiveRecord::Base
  # add associations
  has_many :songs
  
  def genre_name=(genre_name)
    self.artist = Genre.find_or_create_by(genre_name)
  end 
  
  def genre_name
    self.genre ? self.genre.name : nil
  end 
end

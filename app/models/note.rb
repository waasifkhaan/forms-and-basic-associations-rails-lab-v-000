class Note < ActiveRecord::Base
  # add associations here
  belongs_to :song
  
  def notes=(note)
    note.each do |note|
      
end

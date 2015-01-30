class Album < ActiveRecord::Base
  # define a class constant that will have a list of all the valid genres
  GENRES = %w{ Rock Rap Rountry Jazz Ska Dance }
  # same as ['rock', 'rap', ect.]

  validates :title, presence: true
  validates :genre, inclusion: {in: GENRES, message: 'is Invalid'}
end

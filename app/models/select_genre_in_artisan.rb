class SelectGenreInArtisan < ApplicationRecord
  belongs_to :artisan_profile
  belongs_to :artisan_genre_list
end

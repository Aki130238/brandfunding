class ArtisanProfile < ApplicationRecord
  has_many :select_genre_in_artisans, inverse_of: :artisan_profile, dependent: :destroy
  has_many :artisan_genre_lists, through: :select_genre_in_artisans
  belongs_to :user, inverse_of: :artisan_profile
end

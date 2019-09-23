class ArtisanProfile < ApplicationRecord
  has_many :select_genre_in_artisans, inverse_of: :artisan_profile, dependent: :destroy
  has_many :artisan_genre_lists, through: :select_genre_in_artisans
  has_many :select_item_in_artisans, inverse_of: :artisan_profile, dependent: :destroy
  has_many :artisan_item_lists, through: :select_item_in_artisans
  has_many :select_facillity_in_artisans, inverse_of: :artisan_profile, dependent: :destroy
  has_many :artisan_facillity_lists, through: :select_facillity_in_artisans
  has_many :select_processing_in_artisans, inverse_of: :artisan_profile, dependent: :destroy
  has_many :artisan_processing_lists, through: :select_processing_in_artisans

  belongs_to :user, inverse_of: :artisan_profile
end

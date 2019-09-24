class ArtisanFacillityList < ApplicationRecord
  has_many :select_facillity_in_artisans, dependent: :destroy
  has_many :artisan_profiles, through: :select_facillity_in_artisans
end

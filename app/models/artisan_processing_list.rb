class ArtisanProcessingList < ApplicationRecord
  has_many :select_processing_in_artisans, dependent: :destroy
  has_many :artisan_profiles, through: :select_processing_in_artisans
end

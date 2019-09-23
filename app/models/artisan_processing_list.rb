class ArtisanProcessingList < ApplicationRecord
  has_many :artisan_profiles, through: :select_processing_in_artisans
  has_many :select_processing_in_artisans, dependent: :destroy
end

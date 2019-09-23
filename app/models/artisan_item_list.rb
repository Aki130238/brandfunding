class ArtisanItemList < ApplicationRecord
  has_many :artisan_profiles, through: :select_item_in_artisans
  has_many :select_item_in_artisans, dependent: :destroy
end

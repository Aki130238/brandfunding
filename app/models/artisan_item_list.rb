class ArtisanItemList < ApplicationRecord
  has_many :select_item_in_artisans, dependent: :destroy
  has_many :artisan_profiles, through: :select_item_in_artisans
end

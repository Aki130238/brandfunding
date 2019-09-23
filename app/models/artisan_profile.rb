class ArtisanProfile < ApplicationRecord
  has_many :select_genre_in_artisans, inverse_of: :artisan_profile, dependent: :destroy
  has_many :artisan_genre_lists, through: :select_genre_in_artisans
  has_many :select_item_in_artisans, inverse_of: :artisan_profile, dependent: :destroy
  has_many :artisan_item_lists, through: :select_item_in_artisans
  has_many :select_facillity_in_artisans, inverse_of: :artisan_profile, dependent: :destroy
  has_many :artisan_facillity_lists, through: :select_facillity_in_artisans
  has_many :select_processing_in_artisans, inverse_of: :artisan_profile, dependent: :destroy
  has_many :artisan_processing_lists, through: :select_processing_in_artisans
  
  has_many :artisan_genre_ids
  # has_many :artisan_item_ids
  has_many :artisan_facillity_ids
  has_many :artisan_processing_ids
  accepts_nested_attributes_for :artisan_genre_ids, reject_if: :all_blank, update_only: true
  # accepts_nested_attributes_for :artisan_item_ids, reject_if: :all_blank, update_only: true
  accepts_nested_attributes_for :artisan_facillity_ids, reject_if: :all_blank, update_only: true
  accepts_nested_attributes_for :artisan_processing_ids, reject_if: :all_blank, update_only: true
  
  belongs_to :user, inverse_of: :artisan_profile
end

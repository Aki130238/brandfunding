class ArtisanProfile < ApplicationRecord
  belongs_to :user, inverse_of: :artisan_profile
end

class SelectItemInArtisan < ApplicationRecord
  belongs_to :artisan_profile
  belongs_to :artisan_item_list
end

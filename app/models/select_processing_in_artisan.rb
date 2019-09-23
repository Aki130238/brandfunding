class SelectProcessingInArtisan < ApplicationRecord
  belongs_to :artisan_profile
  belongs_to :artisan_processing_list
end

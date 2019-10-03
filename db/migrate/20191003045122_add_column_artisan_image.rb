class AddColumnArtisanImage < ActiveRecord::Migration[5.2]
  def change
    add_column :artisan_profiles, :artisan_image, :string
  end
end

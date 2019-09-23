class CreateArtisanProcessingLists < ActiveRecord::Migration[5.2]
  def change
    create_table :artisan_processing_lists do |t|
      t.string :processing_name

      t.timestamps
    end
  end
end

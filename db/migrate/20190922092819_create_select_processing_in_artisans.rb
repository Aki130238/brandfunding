class CreateSelectProcessingInArtisans < ActiveRecord::Migration[5.2]
  def change
    create_table :select_processing_in_artisans do |t|
      t.references :artisan_profile, foreign_key: true, index: { name: 'index_artisan_processing_id' }
      t.references :artisan_processing_list, foreign_key: true, index: { name: 'index_artisan_processing_list_id' }

      t.timestamps
    end
  end
end

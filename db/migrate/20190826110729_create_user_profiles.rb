class CreateUserProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :user_profiles do |t|
      t.string :family_name, null: false
      t.string :family_name_sub, null: false
      t.string :last_name, null: false
      t.string :last_name_sub, null: false
      t.string :sex
      t.string :birthday, null: false
      t.integer :add_no, null: false
      t.string :prefectures, null: false
      t.text :address, null: false
      t.integer :phone_no1, null: false
      t.integer :phone_no2, null: false

      t.timestamps
    end
  end
end

class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :title
      t.string :pet_name
      t.string :pet_breed
      t.string :pet_color
      t.text :observation
      t.string :location_x
      t.string :location_y
      t.text :picture
      t.integer :user_id

      t.timestamps null: false
    end
  end
end

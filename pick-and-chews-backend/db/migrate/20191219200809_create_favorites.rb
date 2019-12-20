class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.text :recommendations
      t.integer :likes
      t.integer :user_id
      t.integer :restaurant_id

      t.timestamps
    end
  end
end

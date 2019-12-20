class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :input
      t.integer :user_id
      t.integer :restaurant_id

      t.timestamps
    end
  end
end

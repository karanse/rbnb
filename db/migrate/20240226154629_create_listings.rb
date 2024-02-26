class CreateListings < ActiveRecord::Migration[7.1]
  def change
    create_table :listings do |t|
      t.string :address
      t.string :category
      t.integer :rating
      t.integer :price_per_night
      t.references :user, null: false, foreign_key: true
      t.boolean :has_pool
      t.boolean :has_garden
      t.integer :number_of_rooms

      t.timestamps
    end
  end
end

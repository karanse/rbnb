class CreateOffers < ActiveRecord::Migration[7.1]
  def change
    create_table :offers do |t|
      t.date :start_date
      t.date :end_date
      t.references :listing, null: false, foreign_key: true
      t.string :comment
      t.references :user, null: false, foreign_key: true
      t.integer :total_price

      t.timestamps
    end
  end
end

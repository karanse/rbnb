class AddCityColumnToListings < ActiveRecord::Migration[7.1]
  def change
    add_column :listings, :city, :string
  end
end

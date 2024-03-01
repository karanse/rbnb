class AddCountryColumnToListings < ActiveRecord::Migration[7.1]
  def change
    add_column :listings, :country, :string
  end
end

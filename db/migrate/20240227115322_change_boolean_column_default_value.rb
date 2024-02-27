class ChangeBooleanColumnDefaultValue < ActiveRecord::Migration[7.1]
  def change
    change_column_default :listings, :has_pool, from: nil, to: false
    change_column_default :listings, :has_garden, from: nil, to: false
  end
end

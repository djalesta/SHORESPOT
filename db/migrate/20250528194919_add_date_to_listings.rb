class AddDateToListings < ActiveRecord::Migration[7.1]
  def change
    add_column :listings, :date, :date
  end
end

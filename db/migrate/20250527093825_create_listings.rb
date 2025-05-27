class CreateListings < ActiveRecord::Migration[7.1]
  def change
    create_table :listings do |t|
      t.float :price_per_hour
      t.string :description
      t.references :user, null: false, foreign_key: true
      t.integer :spot_column
      t.integer :spot_row

      t.timestamps
    end
  end
end

class CreateBookingExtras < ActiveRecord::Migration[7.1]
  def change
    create_table :booking_extras do |t|
      t.string :item
      t.integer :quantity
      t.references :booking, null: false, foreign_key: true

      t.timestamps
    end
  end
end

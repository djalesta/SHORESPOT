class CreateBookingExtras < ActiveRecord::Migration[7.1]
  def change
    create_table :booking_extras do |t|

      t.timestamps
    end
  end
end

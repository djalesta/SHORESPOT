class ChnageDataTypes < ActiveRecord::Migration[7.1]


  def up
    change_column :listings, :description, :text
    change_column :reviews, :comment, :text
    change_column :reviews, :rating, :integer
  end

  def down
    change_column :listings, :description, :string
    change_column :reviews, :comment, :string
    change_column :reviews, :rating, :float
  end


end

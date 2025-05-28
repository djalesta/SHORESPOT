class ListingsController < ApplicationController
  def index
    @date = params[:date].present? ? Date.parse(params[:date]) : Date.today
    @listings = Listing.where(date: @date)
 if @listings.empty?
      reserved_indexes = (0..199).to_a.sample(20)
      reserved_indexes.each do |index|
        row = index / 50 + 1
        col = index % 50 + 1
        Listing.create!(
          user_id: User.first.id,
          date: @date,
          spot_row: row,
          spot_column: col,
          price_per_hour: 10,
          description: "Auto generated"
        )
      end
      @listings = Listing.where(date: @date)
    end
  end
end

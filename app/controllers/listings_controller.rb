class ListingsController < ApplicationController
  def index
    if params[:date].present?
      @date = Date.parse(params[:date])
    else
      @date = Date.today
    end

    bookings_on_date = Booking.where("? BETWEEN DATE(start_date) AND DATE(end_date)", @date)

    booked_ids = bookings_on_date.map(&:listing_id)

    @listings = Listing.where.not(id: booked_ids)
  end
end

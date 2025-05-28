class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @listing = Listing.find(params[:listing_id])
    @booking = Booking.new(params)
    if @booking.save
      redirect_to bookings_index(@booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
  end
end

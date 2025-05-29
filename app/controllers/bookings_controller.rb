class BookingsController < ApplicationController
  def new
    @listing = Listing.find(params[:listing_id])
    @booking = Booking.new
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @listing = Listing.find(params[:listing_id])
    @booking = @listing.booking.build(booking_params)

    if @booking.save
      redirect_to @listing, notice: "Booking created!"
    else
      render :new
    end

    # def destroy
    # end
  end

  private

  def set_listing
  @listing = Listing.find(params[:listing_id])
  end
end

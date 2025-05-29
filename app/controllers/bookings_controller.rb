class BookingsController < ApplicationController
  def new
    @listing = Listing.find(params[:listing_id])
    @booking = Booking.new
  end

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
  @listing = Listing.find(params[:listing_id])
  @booking = @listing.bookings.new(booking_params)
  @booking.price = @booking.total_price

  selected_date = Date.parse(params[:booking][:date])
  selected_hour = params[:booking][:start_hour].to_i
  @booking.start_date = DateTime.new(selected_date.year, selected_date.month, selected_date.day, selected_hour, 0, 0)
  @booking.end_date = @booking.start_date + params[:booking][:duration].to_i.hours
  @booking.user_id = current_user.id
  
    if @booking.save
      @booking.update(status: "confirmed")
      redirect_to listing_bookings_path(@listing), notice: "Booking created!"
    else
      render :new
    end
  end

  private

  def set_listing
  @listing = Listing.find(params[:listing_id])
  end

  def booking_params
  params.require(:booking).permit(:date, :start_hour, :duration, :status, :listing_id, :user_id)
  end
end

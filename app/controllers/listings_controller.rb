class ListingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

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

  def show
    @listing = Listing.find(params[:id])
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = current_user.listings.build(listing_params) # Associate the listing with the logged-in user
    if @listing.save
      redirect_to seller_listings_path, notice: "Listing was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def sellerlistings
    @listings = current_user.listings
    # Listing.all where Listing.user_id ==
  end

  def listingsbookings
    @listings = current_user.listings
    @bookings = Booking.where(listing_id: current_user.listing_ids)
    @listings_bookings = current_user.listings.joins(:bookings).distinct
  end

  def edit
    @listing = Listing.find(params[:id])
  end

  def update
    @listing = Listing.find(params[:id])
    if @listing.update(listing_params)
      redirect_to seller_listings_path, notice: "Listing successfully updated!"
    else
      flash[:alert] = "Error: Unable to update listing."
      render :edit
    end
  end

  private

  def listing_params
    params.require(:listing).permit(:description, :price_per_hour, :spot_column, :spot_row)
  end

end

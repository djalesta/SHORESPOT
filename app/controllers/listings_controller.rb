class ListingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    # örnek: @listings = Listing.all
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = current_user.listings.build(listing_params) # Associate the listing with the logged-in user
    @listing.save!
    redirect_to listings_path
  end

  private

  def listing_params
    params.require(:listing).permit(:description, :price_per_hour, :spot_column, :spot_row)
  end

end

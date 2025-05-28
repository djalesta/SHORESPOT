class ListingsController < ApplicationController

  before_action :authenticate_user!
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    # örnek: @listings = Listing.all
  end

  def show
    @listing = Listing.find(params[:id])
  end


end

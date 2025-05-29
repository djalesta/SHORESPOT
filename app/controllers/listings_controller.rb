class ListingsController < ApplicationController
  def index

    @date = params[:date].present? ? Date.parse(params[:date]) : Date.today

    @listings = Listing.where(date: @date)
  end
end

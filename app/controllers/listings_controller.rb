class ListingsController < ApplicationController
  def index
    @listings = Listing.all
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    if @listing.save
      redirect_to listing_path(@listing)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @listing = Listing.find(params[:query])
  end

  private

  def listing_params
    params.require(:listing).permit(:address, :category, :rating, :price_per_night, :has_pool, :has_garden, :number_of_rooms, photos: [])

  end
end

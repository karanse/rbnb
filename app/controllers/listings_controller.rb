class ListingsController < ApplicationController
  def index
    @listings = Listing.all
    @markers = @listings.geocoded.map do |listing|
      {
        lat: listing.latitude,
        lng: listing.longitude
      }
    end
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.user = current_user # current_user comes from devise authentication
    @listing.city = Geocoder.search(@listing.address).first.city
    @listing.country = Geocoder.search(@listing.address).first.country
    if @listing.save
      redirect_to listing_path(@listing)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @listing = Listing.find(params[:id])
  end

  private

  def listing_params
    params.require(:listing).permit(:address, :category, :rating, :price_per_night, :has_pool, :has_garden, :number_of_rooms, photos: [])
  end
end

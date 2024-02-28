class OffersController < ApplicationController
  before_action :set_listing, only: [ :new, :create ]
  before_action :set_offer, only: [ :show ]

  # def index
  #   # TODO: edit method so that it shows only offers of certain user
  #   @offer = Offer.all
  # end

  def new
    @offer = Offer.new
  end

  def create
    # @offer = Offer.new(offer_params)
    # @offer.listing = @listing
    # if @offer.save
    #   redirect_to listing_path(@listing)
    # else
    #   render :new, status: :unprocessable_entity
    # end
  end

  def show; end

  private

  def set_listing
    @listing = Listing.find(params[:listing_id])
  end

  def set_offer
    @offer = Offer.find(params[:id])
  end

  def offer_params
    params.require(:offer).permit(:listing_id)
  end
end

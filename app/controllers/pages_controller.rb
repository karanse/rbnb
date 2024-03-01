class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @listings = Listing.all
  end

  def dashboard
    @offers = current_user.received_offers
  end
end

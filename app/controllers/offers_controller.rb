class OffersController < ApplicationController

  def index
    @offers = Offer.where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@offers) do |offer, marker|
      marker.lat offer.latitude
      marker.lng offer.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end

  def show
    @offer = Offer.find(params[:id])
    @offer_coordinates = { lat: @offer.latitude, lng: @offer.longitude }
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(task_params)
    @offer.save
    redirect_to user_offers_path
  end

  def edit
    @offer = Offer.find(params[:id])
  end

  def update
    @offer = Offer.find(params[:id])
    @offer.update(task_params)
    redirect_to user_offers_path
  end

  def destroy
    @offer = Offer.find(params[:id])
    @offer.destroy
    redirect_to user_offers_path
  end

  private

  def task_params
    params.require(:offer).permit(:name, :address, :city, :zip_code, :price, :description, :room_number, :surface, :type)
  end

end

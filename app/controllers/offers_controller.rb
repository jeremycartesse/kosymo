class OffersController < ApplicationController
  def index
    @offers = Offer.all
  end

  def show
    @offer = Offer.find(params[:id])
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(task_params)
    @offer.save
    redirect_to user_offers_path(user_id: current_user)
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
    params.require(:offer).permit(:name, :city, :price, :address, :zip_code, :video, :description, :room_number, :bedroom_number, :surface, :good_type, :parking, :pictures, :ground, :lift, :garden, :floor, :swimming_pool, :cave, :balcony, :terraceo )
  end

end

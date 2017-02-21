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
    redirect_to dashboard_index_path
  end

  def edit
    @offer = Offer.find(params[:id])
  end

  def update
    @offer = Offer.find(params[:id])
    @offer.update(task_params)
    redirect_to dashboard_index_path
  end

  def destroy
    @offer = Offer.find(params[:id])
    @offer.destroy
    redirect_to dashboard_index_path
  end

  private

  def task_params
    params.require(:offer).permit(:name, :address, :city, :zip_code, :price, :description, :room_number, :surface, :type)
  end

end

class DashboardController < ApplicationController
  def index
    @offers = Offer.where(:user_id => current_user.id).order(:created_at.desc)
    respond_with(@offers)
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def delete
  end

  def update
  end
end

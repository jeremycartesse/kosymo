class UsersController < ApplicationController
  def offers
    @offers = Offer.where(:user_id => current_user.id).order(created_at: :desc)
  end

end

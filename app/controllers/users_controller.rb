class UsersController < ApplicationController

  def dashboard
    @user = current_user
    @item_review = ItemReview.new
  end
end

class ItemReviewsController < ApplicationController

  def create
    @user = current_user
    @item_review = ItemReview.new(item_review_params)
    @item_review.booking = Booking.find(params[:booking_id])
    if @item_review.save
      redirect_to @item_review.booking.item
    else
      flash[:alert] = "Review invalid"
      render 'users/dashboard'
    end
  end

  private

  def item_review_params
    params.require(:item_review).permit(:rating, :content)
  end
end

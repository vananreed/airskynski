class ItemReviewsController < ApplicationController

  def create
    @booking = Booking.find(params[:booking_id])
    redirect_to dashboard_path if @booking.item_review #hacker defense
    @user = current_user
    @item_review = ItemReview.new(item_review_params)
    @item_review.booking = @booking
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

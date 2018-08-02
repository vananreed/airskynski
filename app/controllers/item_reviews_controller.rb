class ItemReviewsController < ApplicationController

  def create
    @item_review = ItemReview.new(item_review_params)
    @item_review.booking = Booking.find(params[:booking_id])
    if @item_review.valid?
      @item_review.save
      redirect_to dashboard_path
    else
    render 'dashboard'
    end
  end

  private

  def item_review_params
    params.require(:item_review).permit(:rating, :content)
  end
end

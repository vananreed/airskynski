class BookingsController < ApplicationController
  before_action :set_item, only: [:new, :create]
  before_action :set_booking, only: [:destroy]

  def index
    @bookings = Booking.all
  end

  def create
    prevent_owner
    @booking = Booking.new(booking_params)
    @booking.price = @item.price
    @booking.item = @item
    @booking.user = current_user
    if @booking.save
      redirect_to dashboard_path
    else
      redirect_to @item
    end
  end

  def destroy
    @booking.destroy
    @item = @booking.item
    redirect_to @item
  end

  private

  def prevent_owner
    redirect_to @item if current_user == @item.user
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_item
    @item = Item.find(params[:item_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end

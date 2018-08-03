class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
    @items = policy_scope(Item).where.not(latitude: nil, longitude: nil)

    @markers = @items.map do |item|
      {
        lat: item.latitude,
        lng: item.longitude,
        infoWindow: { content: render_to_string(partial: "/items/map_box", locals: { item: item }) }
      }
    end
  end

  def show
    @booking = Booking.new
  end

  def new
    @item = current_user.items.new
    authorize @item
  end

  def create
    @item = current_user.items.new(item_params)
    authorize @item
    if @item.valid?
      @item.save
      redirect_to @item
    else
    render 'new'
    end
  end

  def edit
  end

  def update
    @item.update(item_params)
    if @item.valid?
      @item.save
      redirect_to @item
    else
    render 'edit'
    end
  end

  def destroy
    @item.destroy
  end

  private
  def set_item
    @item = Item.find(params[:id])
    authorize @item
  end

  def item_params
    params.require(:item).permit(:price, :name, :description, :category, :photo, :address, :published)
  end
end

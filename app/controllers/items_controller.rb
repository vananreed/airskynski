class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  def index
    @items = policy_scope(Item)
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

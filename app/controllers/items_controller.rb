class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  def index
    @items = Item.all
  end

  def show
  end

  def new
    @item = Item.new
  end

  def create
    # @item = Item.new(item_params)
    # if @item.valid?
    #   @item.save
    #   redirect_to item_path(@item)
    # else
  #   render 'new'
  #   end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def set_item
    @item = Item.find(params[:id])
  end
end

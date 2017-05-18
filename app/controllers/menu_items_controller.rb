class MenuItemsController < ApplicationController
  before_action :set_menu_item, only: [:show, :edit, :update, :destroy]

  respond_to :html
  ###########################
  def new
    @menu_item = MenuItem.new
    respond_with(@menu_item)
  end

  def create
    @menu_item = MenuItem.new(menu_item_params)
    @menu_item.save
    respond_with(@menu_item)
  end
#########################################


  def index
    @menu_items = MenuItem.all
    respond_with(@menu_items)
  end

  def show
    respond_with(@menu_item)
  end



  def edit
  end



  def update
    @menu_item.update(menu_item_params)
    respond_with(@menu_item)
  end

  def destroy
    @menu_item.destroy
    respond_with(@menu_item)
  end

  private
    def set_menu_item
      @menu_item = MenuItem.find(params[:id])
    end

    def menu_item_params
      params.require(:menu_item).permit(:menu_item)
    end
end

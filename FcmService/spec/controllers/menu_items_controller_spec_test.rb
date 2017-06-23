require 'rails_helper'

RSpec.describe MenuItemsController, type: :controller do

  #https://relishapp.com/rspec/rspec-rails/docs/controller-specs
  describe "GET index" do
    it "assigns @teams" do
      menu_item = MenuItem.new
      get :index
      expect(assigns(:@menu_items)).to eq([menu_item])
    end

    it "renders the index @template" do
      get :index
      expect(response).to render_template("index")
    end
  end



end
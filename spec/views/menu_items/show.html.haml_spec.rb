require 'rails_helper'

RSpec.describe "menu_items/show", type: :view do
  before(:each) do
    @menu_item = assign(:menu_item, MenuItem.create!(
      :menu_item => "Menu Item"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Menu Item/)
  end
end

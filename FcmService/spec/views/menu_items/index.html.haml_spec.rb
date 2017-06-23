require 'rails_helper'

RSpec.describe "menu_items/index", type: :view do
  before(:each) do
    assign(:menu_items, [
      MenuItem.create!(
        :menu_item => "Menu Item"
      ),
      MenuItem.create!(
        :menu_item => "Menu Item"
      )
    ])
  end

  it "renders a list of menu_items" do
    render
    assert_select "tr>td", :text => "Menu Item".to_s, :count => 2
  end
end

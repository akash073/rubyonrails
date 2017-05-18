require 'rails_helper'

RSpec.describe "menu_items/new", type: :view do
  before(:each) do
    assign(:menu_item, MenuItem.new(
      :menu_item => "MyString"
    ))
  end

  it "renders new menu_item form" do
    render

    assert_select "form[action=?][method=?]", menu_items_path, "post" do

      assert_select "input#menu_item_menu_item[name=?]", "menu_item[menu_item]"
    end
  end
end

require 'rails_helper'

RSpec.describe "line_items/index", type: :view do
  before(:each) do
    assign(:line_items, [
      LineItem.create!(
        product: "",
        cart: nil
      ),
      LineItem.create!(
        product: "",
        cart: nil
      )
    ])
  end

  it "renders a list of line_items" do
    render
    assert_select "tr>td", text: "".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end

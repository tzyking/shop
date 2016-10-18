require 'rails_helper'

RSpec.describe "variants/index", type: :view do
  before(:each) do
    assign(:variants, [
      Variant.create!(
        :product_id => 1,
        :price => "9.99",
        :size => "Size"
      ),
      Variant.create!(
        :product_id => 1,
        :price => "9.99",
        :size => "Size"
      )
    ])
  end

  it "renders a list of variants" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Size".to_s, :count => 2
  end
end

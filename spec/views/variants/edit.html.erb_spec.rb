require 'rails_helper'

RSpec.describe "variants/edit", type: :view do
  before(:each) do
    @variant = assign(:variant, Variant.create!(
      :product_id => 1,
      :price => "9.99",
      :size => "MyString"
    ))
  end

  it "renders the edit variant form" do
    render

    assert_select "form[action=?][method=?]", variant_path(@variant), "post" do

      assert_select "input#variant_product_id[name=?]", "variant[product_id]"

      assert_select "input#variant_price[name=?]", "variant[price]"

      assert_select "input#variant_size[name=?]", "variant[size]"
    end
  end
end

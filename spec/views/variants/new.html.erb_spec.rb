require 'rails_helper'

RSpec.describe "variants/new", type: :view do
  before(:each) do
    assign(:variant, Variant.new(
      :product_id => 1,
      :price => "9.99",
      :size => "MyString"
    ))
  end

  it "renders new variant form" do
    render

    assert_select "form[action=?][method=?]", variants_path, "post" do

      assert_select "input#variant_product_id[name=?]", "variant[product_id]"

      assert_select "input#variant_price[name=?]", "variant[price]"

      assert_select "input#variant_size[name=?]", "variant[size]"
    end
  end
end

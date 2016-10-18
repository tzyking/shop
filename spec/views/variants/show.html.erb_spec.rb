require 'rails_helper'

RSpec.describe "variants/show", type: :view do
  before(:each) do
    @variant = assign(:variant, Variant.create!(
      :product_id => 1,
      :price => "9.99",
      :size => "Size"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Size/)
  end
end

require 'spec_helper'

describe "items/show" do
  before(:each) do
    @item = assign(:item, stub_model(Item,
      :provider_type => "Provider Type",
      :name => "Name",
      :price => 1,
      :caption => "MyText",
      :url => "Url",
      :tax_exclude => false,
      :review_count => 2,
      :review_average => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Provider Type/)
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/MyText/)
    rendered.should match(/Url/)
    rendered.should match(/false/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end

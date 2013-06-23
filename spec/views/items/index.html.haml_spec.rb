require 'spec_helper'

describe "items/index" do
  before(:each) do
    assign(:items, [
      stub_model(Item,
        :provider_type => "Provider Type",
        :name => "Name",
        :price => 1,
        :caption => "MyText",
        :url => "Url",
        :tax_exclude => false,
        :review_count => 2,
        :review_average => 3
      ),
      stub_model(Item,
        :provider_type => "Provider Type",
        :name => "Name",
        :price => 1,
        :caption => "MyText",
        :url => "Url",
        :tax_exclude => false,
        :review_count => 2,
        :review_average => 3
      )
    ])
  end

  it "renders a list of items" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Provider Type".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end

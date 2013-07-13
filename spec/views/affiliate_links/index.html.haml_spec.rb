require 'spec_helper'

describe "affiliate_links/index" do
  before(:each) do
    assign(:affiliate_links, [
      stub_model(AffiliateLink,
        :title => "Title",
        :url => "Url"
      ),
      stub_model(AffiliateLink,
        :title => "Title",
        :url => "Url"
      )
    ])
  end

  it "renders a list of affiliate_links" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
  end
end

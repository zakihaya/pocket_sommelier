require 'spec_helper'

describe "affiliate_links/show" do
  before(:each) do
    @affiliate_link = assign(:affiliate_link, stub_model(AffiliateLink,
      :title => "Title",
      :url => "Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Url/)
  end
end

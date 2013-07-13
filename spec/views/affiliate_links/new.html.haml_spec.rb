require 'spec_helper'

describe "affiliate_links/new" do
  before(:each) do
    assign(:affiliate_link, stub_model(AffiliateLink,
      :title => "MyString",
      :url => "MyString"
    ).as_new_record)
  end

  it "renders new affiliate_link form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", affiliate_links_path, "post" do
      assert_select "input#affiliate_link_title[name=?]", "affiliate_link[title]"
      assert_select "input#affiliate_link_url[name=?]", "affiliate_link[url]"
    end
  end
end

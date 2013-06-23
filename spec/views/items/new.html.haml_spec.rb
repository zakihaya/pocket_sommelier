require 'spec_helper'

describe "items/new" do
  before(:each) do
    assign(:item, stub_model(Item,
      :provider_type => "MyString",
      :name => "MyString",
      :price => 1,
      :caption => "MyText",
      :url => "MyString",
      :tax_exclude => false,
      :review_count => 1,
      :review_average => 1
    ).as_new_record)
  end

  it "renders new item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", items_path, "post" do
      assert_select "input#item_provider_type[name=?]", "item[provider_type]"
      assert_select "input#item_name[name=?]", "item[name]"
      assert_select "input#item_price[name=?]", "item[price]"
      assert_select "textarea#item_caption[name=?]", "item[caption]"
      assert_select "input#item_url[name=?]", "item[url]"
      assert_select "input#item_tax_exclude[name=?]", "item[tax_exclude]"
      assert_select "input#item_review_count[name=?]", "item[review_count]"
      assert_select "input#item_review_average[name=?]", "item[review_average]"
    end
  end
end

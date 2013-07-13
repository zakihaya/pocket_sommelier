require "spec_helper"

describe AffiliateLinksController do
  describe "routing" do

    it "routes to #index" do
      get("/affiliate_links").should route_to("affiliate_links#index")
    end

    it "routes to #new" do
      get("/affiliate_links/new").should route_to("affiliate_links#new")
    end

    it "routes to #show" do
      get("/affiliate_links/1").should route_to("affiliate_links#show", :id => "1")
    end

    it "routes to #edit" do
      get("/affiliate_links/1/edit").should route_to("affiliate_links#edit", :id => "1")
    end

    it "routes to #create" do
      post("/affiliate_links").should route_to("affiliate_links#create")
    end

    it "routes to #update" do
      put("/affiliate_links/1").should route_to("affiliate_links#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/affiliate_links/1").should route_to("affiliate_links#destroy", :id => "1")
    end

  end
end

class SearchController < ApplicationController
  def index
    min_price = params[:min_price].to_i
    max_price = params[:max_price].to_i
    max_price = 9999999 if max_price == 0

    @items = Item.where("price <= #{max_price} and price >= #{min_price}")
  end
end

class HomeController < ApplicationController
  def index
    @items = Item.order(:price).limit(30)
  end
end

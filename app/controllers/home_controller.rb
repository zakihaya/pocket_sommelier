class HomeController < ApplicationController
  def index
    @items = Item.order('id DESC').limit(130).sort{|a,b| a.price <=> b.price}[0..29]
  end
end

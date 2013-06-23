class FeaturesController < ApplicationController
  def show
    @items = Feature.find(params[:id]).items
  end
end

class ValuationsController < ApplicationController
  def show
    if !params[:id] || !['1', '2', '3'].include?(params[:id])
      render :file => "#{Rails.root}/public/404.html", :status => 404, :layout => false, :content_type => 'text/html'
    end

    if params[:id] == "1"
      @items = Item.where('review_average > 460')
    elsif params[:id] == "2"
      @items = Item.where('review_average > 425 and review_average <= 460')
    elsif params[:id] == "3"
      @items = Item.where('review_average > 375 and review_average <= 425')
    end
  end
end

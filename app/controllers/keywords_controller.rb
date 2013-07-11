class KeywordsController < ApplicationController
  # GET /keywords
  # GET /keywords.json
#  def index
#    @items = Item.unscoped.order('id DESC').page params[:page]
#
#    respond_to do |format|
#      format.html # index.html.erb
#      format.json { render json: @items }
#    end
#  end

  # GET /keywords/1
  # GET /keywords/1.json
  def show
    @items = Item.unscoped.keyword_includes(params[:q])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @items }
    end
  end
end

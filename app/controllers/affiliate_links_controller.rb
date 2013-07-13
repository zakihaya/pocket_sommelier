class AffiliateLinksController < ApplicationController
  # GET /affiliate_links
  # GET /affiliate_links.json
  def index
    @affiliate_links = AffiliateLink.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @affiliate_links }
    end
  end

  # GET /affiliate_links/1
  # GET /affiliate_links/1.json
  def show
    @affiliate_link = AffiliateLink.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @affiliate_link }
    end
  end

  # GET /affiliate_links/new
  # GET /affiliate_links/new.json
  def new
    @affiliate_link = AffiliateLink.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @affiliate_link }
    end
  end

  # GET /affiliate_links/1/edit
  def edit
    @affiliate_link = AffiliateLink.find(params[:id])
  end

  # POST /affiliate_links
  # POST /affiliate_links.json
  def create
    @affiliate_link = AffiliateLink.new(params[:affiliate_link])

    respond_to do |format|
      if @affiliate_link.save
        format.html { redirect_to @affiliate_link, notice: 'Affiliate link was successfully created.' }
        format.json { render json: @affiliate_link, status: :created, location: @affiliate_link }
      else
        format.html { render action: "new" }
        format.json { render json: @affiliate_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /affiliate_links/1
  # PUT /affiliate_links/1.json
  def update
    @affiliate_link = AffiliateLink.find(params[:id])

    respond_to do |format|
      if @affiliate_link.update_attributes(params[:affiliate_link])
        format.html { redirect_to @affiliate_link, notice: 'Affiliate link was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @affiliate_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /affiliate_links/1
  # DELETE /affiliate_links/1.json
  def destroy
    @affiliate_link = AffiliateLink.find(params[:id])
    @affiliate_link.destroy

    respond_to do |format|
      format.html { redirect_to affiliate_links_url }
      format.json { head :no_content }
    end
  end
end

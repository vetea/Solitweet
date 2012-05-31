class InfluencersController < ApplicationController
  before_filter :authenticate_http_admin

  # GET /influencers
  # GET /influencers.json
  def index
    @influencers = Influencer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @influencers }
    end
  end

  # GET /influencers/1
  # GET /influencers/1.json
  def show
    @influencer = Influencer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @influencer }
    end
  end

  # GET /influencers/new
  # GET /influencers/new.json
  def new
    @influencer = Influencer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @influencer }
    end
  end

  # GET /influencers/1/edit
  def edit
    @influencer = Influencer.find(params[:id])
  end

  # POST /influencers
  # POST /influencers.json
  def create
    @influencer = Influencer.new(params[:influencer])

    respond_to do |format|
      if @influencer.save
        format.html { redirect_to @influencer, notice: 'Influencer was successfully created.' }
        format.json { render json: @influencer, status: :created, location: @influencer }
      else
        format.html { render action: "new" }
        format.json { render json: @influencer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /influencers/1
  # PUT /influencers/1.json
  def update
    @influencer = Influencer.find(params[:id])

    respond_to do |format|
      if @influencer.update_attributes(params[:influencer])
        format.html { redirect_to @influencer, notice: 'Influencer was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @influencer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /influencers/1
  # DELETE /influencers/1.json
  def destroy
    @influencer = Influencer.find(params[:id])
    @influencer.destroy

    respond_to do |format|
      format.html { redirect_to influencers_url }
      format.json { head :ok }
    end
  end
end

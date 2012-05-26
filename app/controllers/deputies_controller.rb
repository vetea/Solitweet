class DeputiesController < ApplicationController
  before_filter :authenticate_http_admin
  
  # GET /deputies
  # GET /deputies.json
  def index
    @deputies = Deputy.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @deputies }
    end
  end

  # GET /deputies/1
  # GET /deputies/1.json
  def show
    @deputy = Deputy.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @deputy }
    end
  end

  # GET /deputies/new
  # GET /deputies/new.json
  def new
    @deputy = Deputy.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @deputy }
    end
  end

  # GET /deputies/1/edit
  def edit
    @deputy = Deputy.find(params[:id])
  end

  # POST /deputies
  # POST /deputies.json
  def create
    @deputy = Deputy.new(params[:deputy])

    respond_to do |format|
      if @deputy.save
        format.html { redirect_to @deputy, notice: 'Deputy was successfully created.' }
        format.json { render json: @deputy, status: :created, location: @deputy }
      else
        format.html { render action: "new" }
        format.json { render json: @deputy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /deputies/1
  # PUT /deputies/1.json
  def update
    @deputy = Deputy.find(params[:id])

    respond_to do |format|
      if @deputy.update_attributes(params[:deputy])
        format.html { redirect_to @deputy, notice: 'Deputy was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @deputy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deputies/1
  # DELETE /deputies/1.json
  def destroy
    @deputy = Deputy.find(params[:id])
    @deputy.destroy

    respond_to do |format|
      format.html { redirect_to deputies_url }
      format.json { head :ok }
    end
  end
end

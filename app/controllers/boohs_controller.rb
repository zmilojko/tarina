class BoohsController < ApplicationController
  before_action :set_booh, only: [:show, :edit, :update, :destroy]

  # GET /boohs
  # GET /boohs.json
  def index
    @boohs = Booh.all
  end

  # GET /boohs/1
  # GET /boohs/1.json
  def show
  end

  # GET /boohs/new
  def new
    @booh = Booh.new
  end

  # GET /boohs/1/edit
  def edit
  end

  # POST /boohs
  # POST /boohs.json
  def create
    @booh = Booh.new(booh_params)

    respond_to do |format|
      if @booh.save
        format.html { redirect_to @booh, notice: 'Booh was successfully created.' }
        format.json { render :show, status: :created, location: @booh }
      else
        format.html { render :new }
        format.json { render json: @booh.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boohs/1
  # PATCH/PUT /boohs/1.json
  def update
    respond_to do |format|
      if @booh.update(booh_params)
        format.html { redirect_to @booh, notice: 'Booh was successfully updated.' }
        format.json { render :show, status: :ok, location: @booh }
      else
        format.html { render :edit }
        format.json { render json: @booh.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boohs/1
  # DELETE /boohs/1.json
  def destroy
    @booh.destroy
    respond_to do |format|
      format.html { redirect_to boohs_url, notice: 'Booh was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booh
      @booh = Booh.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def booh_params
      params.require(:booh).permit(:title)
    end
end

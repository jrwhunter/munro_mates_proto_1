class HillsController < ApplicationController
  before_action :set_hill, only: [:show, :edit, :update, :destroy]

  # GET /hills
  # GET /hills.json
  def index
    @hills = Hill.all
  end

  # GET /hills/1
  # GET /hills/1.json
  def show
  end

  # GET /hills/new
  def new
    @hill = Hill.new
  end

  # GET /hills/1/edit
  def edit
  end

  # POST /hills
  # POST /hills.json
  def create
    @hill = Hill.new(hill_params)

    respond_to do |format|
      if @hill.save
        format.html { redirect_to @hill, notice: 'Hill was successfully created.' }
        format.json { render action: 'show', status: :created, location: @hill }
      else
        format.html { render action: 'new' }
        format.json { render json: @hill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hills/1
  # PATCH/PUT /hills/1.json
  def update
    respond_to do |format|
      if @hill.update(hill_params)
        format.html { redirect_to @hill, notice: 'Hill was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @hill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hills/1
  # DELETE /hills/1.json
  def destroy
    @hill.destroy
    respond_to do |format|
      format.html { redirect_to hills_url }
      format.json { head :no_content }
    end
  end

  # DESTROY ALL
  def destroy_all
    Hill.destroy_all
  end

  # GET /hills/manage
  def manage
    File.open("app/assets/files/munros.csv") do |file|
      while line = file.gets do
        line_as_array = line.split(',') 
        hill = Hill.new
        hill.number = line_as_array[0]
        hill.name = line_as_array[1]
        hill.other_info = line_as_array[2]
        hill.origin = line_as_array[3]
        hill.book = line_as_array[4]
        hill.height = line_as_array[5]
        hill.grid_ref = line_as_array[6]
        hill.map = line_as_array[7]
        hill.related_hills = line_as_array[8]
        hill.save
      end
    end

  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hill
      @hill = Hill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hill_params
      params.require(:hill).permit(:number, :name, :other_info, :origin, :book, :height, :grid_ref, :map)
    end

end

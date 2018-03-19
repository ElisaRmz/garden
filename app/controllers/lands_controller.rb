class LandsController < ApplicationController

  before_action :find_land, only: [:show, :edit, :update, :destroy]

  def index
    @lands = Land.all
    @plants = Plant.all
  end

  def show
    @diaries = @land.diaries
    @plants = @land.plants
  end

  def new
    @land = Land.new
  end

  def edit
  end

  def create
    @land = Land.new(land_params)
    @land.save
    redirect_to @land
  end

  def update
    @land.update(land_params)
    redirect_to @land
  end

  def destroy
    @land.destroy
    redirect_to action: 'index'
  end
  
  private

  def find_land
    @land = Land.find(params[:id])   
  end

  def land_params
    params.require(:land).permit(
      {plant_ids:[]},
      :temperature,
      :name)
  end

end
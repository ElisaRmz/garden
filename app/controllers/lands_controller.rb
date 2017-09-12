class LandsController < ApplicationController

  def index
    @lands = Land.all
    @plants = Plant.all
  end

  def show
    @land = Land.find(params[:id])
  end

  def new
    @land = Land.new
  end

  def edit
    @land = Land.find(params[:id])
  end

  def create
    @land = Land.new(land_params)
    @land.save
    redirect_to @land
  end

  def update
    @land = Land.find(params[:id])
    @land.update(land_params)
    redirect_to @land
  end

  def destroy
    @land = Land.find(params[:id])
    @land.destroy
    redirect_to action: 'index'
  end
  
  private

  def land_params
    params.require(:land).permit(
      {plant_ids:[]},
      :name)
  end

end
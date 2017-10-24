class PlantsController < ApplicationController

  def index
    @plants = Plant.all
    @families = Family.all
  end

  def show
    @plant = Plant.find(params[:id])
  end

  def new
    @plant = Plant.new
  end

  def edit
    @plant = Plant.find(params[:id])
    @plants = Plant.all
  end

  def create
    @plant = Plant.new(plant_params)
    @plant.name.capitalize!
    redirect_to @plant if @plant.save
    
  end

  def update
    @plant = Plant.find(params[:id])
    @plant.update(plant_params)    
    @plant.name.capitalize!

    @plant.save
    redirect_to @plant
  end

  def destroy
    @plant = Plant.find(params[:id])
    @plant.destroy
    redirect_to action: 'index'
  end

  private
  
  def plant_params
    params.require(:plant).permit(
      {pest_ids:[]},
      :family_id,
      :name, 
      :edible, 
      :family, 
      :sun, 
      :water, 
      :temperature_max,
      :temperature_min, 
      :diameter, 
      :volume, 
      :height, 
      :depth, 
      :tallness, 
      :seed,
      :grow,
      :harvest,
      :works_note,
      :positive, 
      :negative,
      :note)
  end

end
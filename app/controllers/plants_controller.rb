class PlantsController < ApplicationController

  before_action :find_plant, only: [:show, :edit, :update, :destroy]

  def index
    @plants = Plant.all
    @families = Family.all
  end

  def show
  end

  def new
    @plant = Plant.new
  end

  def edit
    @plants = Plant.all
  end

  def create
    @plant = Plant.new(plant_params)
    @plant.name.capitalize!
    redirect_to @plant if @plant.save   
  end

  def update
    @plant.update(plant_params)    
    @plant.name.capitalize!

    @plant.save
    redirect_to @plant
  end

  def destroy
    @plant.destroy
    redirect_to action: 'index'
  end

  private
  
  def find_plant
     @plant = Plant.find(params[:id])   
  end
  
  def plant_params
    params.require(:plant).permit(
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
      :works_note,
      :positive, 
      :negative,
      :note,
      pest_ids:[],
      seed:[],
      grow:[],
      harvest:[])
  end

end
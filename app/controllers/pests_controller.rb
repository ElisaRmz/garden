class PestsController < ApplicationController

  before_action :find_pest, only: [:show, :edit, :update, :destroy]

  def index
    @pests = Pest.all
  end

  def show
  end

  def new
    @pest = Pest.new
  end

  def edit
  end

  def create
    @pest = Pest.new(pest_params)
    @pest.name.capitalize! 
    @pest.save
    redirect_to @pest
  end

  def update
    @pest.update(pest_params)
    redirect_to action: 'show'
  end

  def destroy
    @pest.destroy
    redirect_to action: "index"
  end

  private

  def find_pest
    @pest = Pest.find(params[:id])    
  end

  def pest_params
    params.require(:pest).permit(
      {plant_ids:[]},
      :name,
      :group,
      :damage,
      :beat)
  end

end
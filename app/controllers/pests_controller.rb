class PestsController < ApplicationController

  def index
    @pests = Pest.all
  end

  def show
    @pest = Pest.find(params[:id])
  end

  def new
    @pest = Pest.new
  end

  def edit
    @pest = Pest.find(params[:id])
  end

  def create
    @pest = Pest.new(pest_params)
    @pest.name.capitalize! 
    @pest.save
    redirect_to @pest
  end

  def update
    @pest = Pest.find(params[:id])
    @pest.update(pest_params)
    redirect_to action: 'show'
  end

  def destroy
    @pest = Pest.find(params[:id])
    @pest.destroy
    redirect_to action: "index"
  end

  private

  def pest_params
    params.require(:pest).permit(
      {plant_ids:[]},
      :name,
      :group,
      :damage,
      :beat)
  end

end
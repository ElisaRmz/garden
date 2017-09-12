class  FamiliesController < ApplicationController
  
  def index
    @families = Family.all
  end

  def show
    @family = Family.find(params[:id])
  end

  def new
    @family = Family.new
  end

  def edit
    @family = Family.find(params[:id])
  end

  def create
    @family = Family.new(family_params)
    redirect_to @family if @family.save
  end

  def update
    @family = Family.find(params[:id])
    @family.update(family_params)
    redirect_to @family
  end

  def destroy
    @family = Family.find(params[:id])
    @family.destroy
    redirect_to action: 'index'
  end

  private

  def family_params
    params.require(:family).permit(
      {plant_ids:[]},
      :name,
      :definition)
  end

end
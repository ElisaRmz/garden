class  FamiliesController < ApplicationController
  
    before_action :find_family, only: [:show, :edit, :update, :destroy]

  def index
    @families = Family.all
  end

  def show
  end

  def new
    @family = Family.new
  end

  def edit
  end

  def create
    @family = Family.new(family_params)
    redirect_to @family if @family.save
  end

  def update
    @family.update(family_params)
    redirect_to @family
  end

  def destroy
    @family.destroy
    redirect_to action: 'index'
  end

  private

  def find_family
    @family = Family.find(params[:id])
  end

  def family_params
    params.require(:family).permit(
      {plant_ids:[]},
      :name,
      :definition)
  end

end
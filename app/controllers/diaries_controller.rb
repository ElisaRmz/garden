class DiariesController < ApplicationController
  
  def index
  	@diaries = Diary.all
  end

  def new
  	@diary = Diary.new
  end

  def create
  	@diary = Diary.new(plant_params)
  	redirect_to @diary if @diary.save
  end

  private

  def plant_params
  	params.require(:diary).permit(
  		{plant_ids:[]},
  		:date,
  		:action,
  		:observation)
  end

end
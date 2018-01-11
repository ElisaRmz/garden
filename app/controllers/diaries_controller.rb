class DiariesController < ApplicationController
  
  def index
  	@diaries = Diary.all
  end

  def show
  	@diary = Diary.find(params[:id])
  end

  def new
    @land = Land.find(params[:land_id])
    @diary = Diary.new
  end

  def edit
    @diary = Diary.find(params[:id])
  end

  def create
  	@diary = Diary.new(diary_params)
  	redirect_to @diary if @diary.save
  end

  def update
    @diary = Diary.find(params[:id])
    @diary.save(diary_params)
    redirect_to @diary
  end

  def destroy
    @diary = Diary.find(params[:id])
    @diary.destroy
    redirect_to action: 'index'
  end

  private

  def diary_params
  	params.require(:diary).permit(
  		:plantation_id,
  		:date,
  		:action,
  		:observation,
      :next_date,
      :task)
  end

end
class DiariesController < ApplicationController

  before_action :find_diary, only: [:show, :edit, :update, :destroy]

  def index
  	@diaries = Diary.all
  end

  def show
  end

  def new
    @land = Land.find(params[:land_id])
    @diary = Diary.new
  end

  def edit
  end

  def create
  	@diary = Diary.new(diary_params)
  	redirect_to @diary if @diary.save
  end

  def update
    @diary.save(diary_params)
    redirect_to @diary
  end

  def destroy
    @diary.destroy
    redirect_to action: 'index'
  end

  private

  def find_diary
    @diary = Diary.find(params[:id])
  end

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
class CaresController < ApplicationController

  def index
    @plants = Plant.all
  end
  
end
class MeasuresController < ApplicationController

  def index
    @plants = Plant.all
  end
  
end
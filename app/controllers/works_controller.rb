class WorksController < ApplicationController
  def index
    @plants = Plant.all
  end
end
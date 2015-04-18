class ShredzillaController < ApplicationController

  def index
    @exercises = Exercise.all
  end

  def new
  end

  def show
  end
end

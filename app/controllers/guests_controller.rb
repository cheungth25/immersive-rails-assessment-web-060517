class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def new
    @guest = Guest.new
  end

  def show
    @guest = Guest.find(params[:id])
  end

  def create
     @guest = Guest.create(episode_params)
     redirect_to @guest
  end

  private

  def episode_params(*args)
    params.require(:guest).permit(*args)
  end
end

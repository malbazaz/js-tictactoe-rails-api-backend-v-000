class GamesController < ApplicationController
  # Add your GamesController code here
  def create
  end

  def update
  end

  def index
    @games = Game.all
    render json: @games
  end

  def show
  end

end

class GamesController < ApplicationController
  # Add your GamesController code here
  def create
    game = Game.create(game_params)
    render json: game, status: 201
  end

  def update
    @game = Game.find(params[:id])
    render json: @game
  end

  def index
    @games = Game.all
    render json: @games
  end

  def show
    @game = Game.find_by_id(params[:id])
    @game.update(state: params[:state])
    @game.save
    render json: @game
  end

  private

  def game_params
    params.permit(state: [])
  end
end

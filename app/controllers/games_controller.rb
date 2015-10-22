class GamesController < ApplicationController
  # def index
  #   @games = Game.all
  #   @ordered_games = @games.sort_by { |game| game.score }.reverse
  # end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      flash[:accepted] = "Game added"
      redirect_to root_path
    else
      flash[:errors] = @game.errors.full_messages.join(". ")
      render :new
    end
  end

  def destroy
    @games = Game.all
    @games.destroy
    flash[:accepted] = "Ranking Cleared"
    redirect_to root_path
  end

  def remove_all
    Game.delete_all
    flash[:notice] = "You have removed all rankings!"
    redirect_to root_path
  end

  protected

  def game_params
    params.require(:game).permit(:user_id, :score)
  end
end

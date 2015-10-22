class UsersController < ApplicationController
  def index
    @users = User.all
    @games = Game.all
    # @ordered_users = @users.sort_by { |user| user.total_score }.reverse
  

  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:accepted] = "User added"
      redirect_to root_path
    else
      flash[:errors] = @user.errors.full_messages.join(". ")
      render :new
    end
  end

  def destroy
    @users = User.all
    @users.destroy
    flash[:accepted] = "Users Cleared"
    redirect_to root_path
  end

  def remove_all
    user.delete_all
    flash[:notice] = "You have removed all users!"
    redirect_to root_path
  end

  protected

  def user_params
    params.require(:user).permit(:name)
  end
end

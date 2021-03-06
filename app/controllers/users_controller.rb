class UsersController < ApplicationController
    before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.where.not(id: current_user.id)
  end

  def show

  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to @user
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to root_path
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :photo, :description, instrument_ids:[], genre_ids:[])
  end
end

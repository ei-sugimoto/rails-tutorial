class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def create
    @users = User.new(user_params)
    if @users.save
      redirect_to @users, notice: "User was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def user_params
    params.require(:user).permit(:name, :email, :address, :role)
  end
end

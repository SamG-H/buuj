class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    puts params
    user = User.create(user_params)
    if user.save
      redirect_to logs_path
    else
      render :new
    end
  end

  private
  def user_params
    params.permit(:name, :password)
  end
end

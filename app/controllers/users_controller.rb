class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books
    @profile_image = @user.profile_image
  end

  def edit
  end
end

class UsersController < ApplicationController
  def index
    @users = User.all
    @user = User.new
    render('/users/index.html.erb')
  end

  def create
    @user = User.new(params[:users])

    if @user.save
      flash[:notice] = "User has been added!"
      redirect_to("/users/")
    else
      @users = User.all
      render("/users/index.html.erb")
    end
  end

  def show
  end
end

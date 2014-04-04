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
    @user = User.find(params[:id])
    render("/users/show.html.erb")
  end

  def update
    @user = User.find(params[:id])

    if @user.update(params[:users])
      redirect_to("/users/#{@user.id}")
    else
      render("/users/show.html.erb")
    end
  end

  def destroy
    @user = User.find(params[:id])
    posts = Post.where(:author_id => @user.id)
    posts.each { |post| post.destroy }
    @user.destroy
    redirect_to("/users/")
  end
end

class PostsController < ApplicationController
  def new
    @post = Post.new
    @author = Author.find(params[:id])
    render('posts/new.html.erb')
  end

  def create
    @post = Post.new(params[:posts])
    if @post.save
      redirect_to("/users/#{@post.recipient_id}/")
    else
      @author = Author.find(params[:posts[:author_id]])
      render('posts/new.html.erb')
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to("/users/#{@post.recipient_id}/")
  end
end

class PostsController < ApplicationController
  def new
    @post = Post.new
    @recipient = Recipient.find(params[:id])
    render('posts/new.html.erb')
  end

  def create
    @post = Post.new(params[:posts])
    if @post.save
      redirect_to("/users/#{@post.recipient_id}/")
    else
      @recipient = Recipient.find(@post.recipient_id)
      render('posts/new.html.erb')
    end
  end

  def edit
    @post = Post.find(params[:id])
    @recipient = Recipient.find(@post.recipient.id)
    render('posts/edit.html.erb')
  end

  def update
    @post = Post.find(params[:id])
    if @post.save
      redirect_to("/users/#{@post.recipient_id}/")
    else
      @recipient = Recipient.find(@post.recipient_id)
      render('posts/edit.html.erb')
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to("/users/#{@post.recipient_id}/")
  end
end

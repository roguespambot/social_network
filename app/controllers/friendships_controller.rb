class FriendshipsController < ApplicationController
  def create
    @friendship = Friendship.new(params[:friendships])

    if @friendship.save
      @friendship.reciprocate
      flash[:notice] = "#{@friendship.user.name} and #{@friendship.friend.name} are now friends."
      redirect_to("/users/#{@friendship.user.id}")
    else
      @users = User.all
      render("/users/index.html.erb")
    end
  end

  def destroy
    @friendship = Friendship.find(params[:id])
    other_friendship = @friendship.find_reciprocal
    @friendship.destroy
    other_friendship.destroy
    redirect_to :back
  end
end

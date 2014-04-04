Network::Application.routes.draw do
  resources :users, :except => [:new, :edit]
  resources :friendships, :except => [:new, :edit, :update, :show]
  resources :posts, :except => [:new, :show]
  match('/users/:id/posts', {:via => :get, :to => 'posts#new'})
end

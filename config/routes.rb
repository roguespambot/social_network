Network::Application.routes.draw do
  match('/users/', {:via => :get, :to => 'users#index'})
  match('/users/', {:via => :post, :to => 'users#create'})
  match('/users/:id', {:via => :get, :to => 'users#show'})
end

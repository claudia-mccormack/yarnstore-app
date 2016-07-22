Rails.application.routes.draw do
  get '/products' => 'products#index'
  get '/products/new' => 'products#new'
  get '/products/:id' => 'products#show'
  
  post '/add_yarn' => 'products#add_yarn_post'
end

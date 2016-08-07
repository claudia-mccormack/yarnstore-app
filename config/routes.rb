Rails.application.routes.draw do
  get '/yarns' => 'yarns#index'
  get '/yarns/new' => 'yarns#new'
  post '/yarns' => 'yarns#create'
  get '/yarns/:id' => 'yarns#show'
  get '/yarns/:id/edit' => 'yarns#edit'
  patch '/yarns/:id' => 'yarns#update'
  delete '/yarns/:id' => 'yarns#destroy'
  get '/search' => 'yarns#search'

  get '/suppliers' => 'suppliers#index'
  get '/suppliers' => 'suppliers#new'
  post '/suppliers' => 'suppliers#create'

  get '/images/new' => 'images#new'
  post '/images' => 'images#create'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  post '/orders' => 'orders#create'
  get '/orders/:id' => 'orders#show'

  post '/carted_yarns' => 'carted_yarns#create'
  get '/carted_yarns' => 'carted_yarns#index'
  patch '/carted_yarns/:id' => 'carted_yarns#destroy'
end

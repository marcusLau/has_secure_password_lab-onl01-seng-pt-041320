Rails.application.routes.draw do
  # root 'welcome#welcome'
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  post 'logout' => 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  root to: 'questions#index'
  resources :questions do
    resources :answers
  end
  resources :users, only: [:create, :new]

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'
end

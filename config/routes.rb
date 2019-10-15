Rails.application.routes.draw do
    root to: 'cocktails#index'
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:create, :new]
    resources :reviews, only: [:create]
  end
  resources :doses, only: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get '/cocktails', to: 'cocktails#index'
  # post '/cocktails', to: 'cocktails#create'
  #
  # get '/cocktails/new', to: 'cocktails#new'
  # get '/cocktails/:id/edit', to: 'cocktails#edit'
  #
  # get '/cocktails/:id', to: 'cocktails#show'
  # patch '/cockctails/:id', to: 'cocktails#update'
  #
  # delete '/cocktails/:id', to: 'cocktails#destroy'
end

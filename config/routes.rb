Rails.application.routes.draw do
  get 'restaurants/index'
  get 'restaurants/show'
  get 'restaurants/new'
  resources :restaurants, only: [:index, :show, :new, :create] do
  resources :reviews, only: [:new, :create]
  end
end

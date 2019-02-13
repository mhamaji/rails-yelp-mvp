Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  get 'restaurants/index'
  get 'restaurants/create'
  get 'restaurants/new'
  get 'restaurants/edit'
  get 'restaurants/show'
  get 'restaurants/update'
  get 'restaurants/destroy'
  root to: 'restaurants#index'
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

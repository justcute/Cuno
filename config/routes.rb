Rails.application.routes.draw do
  devise_for :users
  resources :shows do
    resources :seasons
  end
  resources :products, :movies
  root 'static_pages#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

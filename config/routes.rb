Rails.application.routes.draw do
  resources :shows do
    resources :seasons
  end
  resources :movies
  root 'static_pages#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  devise_for :users
  root to: 'foods#index'
  resources :foods do
    resources :likes
  end
end

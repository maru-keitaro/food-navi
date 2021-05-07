Rails.application.routes.draw do
  devise_for :users
  root to: 'foods#index'
  resources :foods do
    resources :likes
  end

  resources :users do
    member do
      get :following, :followers
    end
  end
end

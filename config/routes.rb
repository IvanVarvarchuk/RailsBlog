Rails.application.routes.draw do
  devise_for :accounts

  root 'posts#index', as: 'home'

  resources :posts do
    resources :comments
  end

  resources :categories

end

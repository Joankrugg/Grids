Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  resources :users, only: [:index, :show, :edit, :update, :destroy]
  resources :songs do
    resources :grids, only: [:new, :create, :edit, :update]
  end
  resources :grids, only: [:destroy]# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

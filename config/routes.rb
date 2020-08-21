Rails.application.routes.draw do

  devise_for :users
  get '/user' => "pages#home", :as => :user_root
  root to: 'pages#home'
  resources :users, only: [:index, :show, :edit, :update, :destroy]
  resources :songs do
    resources :grids
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :boxes, only: [:destroy]
end

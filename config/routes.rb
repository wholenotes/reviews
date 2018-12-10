Rails.application.routes.draw do
  devise_for :users
  authenticate :user do
    resources :reviews, only: [:new, :create, :edit, :update, :destroy]
  end
  resources :reviews, only: [:index, :show]
  root to: "reviews#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

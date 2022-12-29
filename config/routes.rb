Rails.application.routes.draw do

  devise_for :users
  root to: "pages#home"
  resources :walks, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :walk_reviews, only: [ :new, :create]
    resources :steps, only: [:new, :create, :destroy]
  end
  resources :publicwalks, only: :index
  resources :reviews, only: [:destroy]
end

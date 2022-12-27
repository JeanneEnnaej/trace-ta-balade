Rails.application.routes.draw do
  get 'walkreviews/new'
  devise_for :users
  root to: "pages#home"
  resources :walks, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :walk_reviews, only: [:index, :new, :create]
  end
  resources :publicwalks, only: :index
  resources :reviews, only: [:destroy]
end

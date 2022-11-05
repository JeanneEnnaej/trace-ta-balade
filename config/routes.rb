Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :walks, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :publicwalks, only: :index
end

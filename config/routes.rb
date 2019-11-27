Rails.application.routes.draw do
  resources :dogs, only: [:show, :index]
  resources :employees, only: [:index, :show, :new, :create, :update, :edit]
end

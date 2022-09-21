Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root to: "pages#home"

  resources :lists , only: [:new, :create, :edit, :update, :destroy, :index, :show] do
  resources :bookmarks, only: %i[new create]
  # Defines the root path route ("/")
  # root "articles#index"

  get "lists", to: "pages#lists"



  end
end

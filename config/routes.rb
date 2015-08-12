Rails.application.routes.draw do
  resources :categories
  devise_for :users
  root "welcome#index"
  resources :articles do
    resources :comments, only: [:create, :update, :destroy, :show]
  end
  
  get "/dashboard", to: "welcome#dashboard"
  put "/articles/:id/publish", to: "articles#publish"
end

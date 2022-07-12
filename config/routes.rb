Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "articles#index"
  get "/articles", to: "articles#index"
  get "/articles/new", to: "articles#new"
  get "/articles/:id/edit", to: "articles#edit"
  patch "/articles/:id", to: "articles#update"
  get "/articles/:id", to: "articles#show"
  get "/articles/delete", to: "articles#Delete"
  resources :articles do
    resources :comments
  end
end

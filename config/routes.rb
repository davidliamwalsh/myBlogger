Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  post "/graphql", to: "graphql#execute"
  
  root 'static_pages#home'
  
  namespace :admin do
    root 'panel#index'
    resources :articles
    resources :comments, only: [:destroy]
  end

  resources :messages, only: [:create, :new]
end
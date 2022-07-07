Rails.application.routes.draw do
  Healthcheck.routes(self)
  post '/pdfs', to: 'pdfs#create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

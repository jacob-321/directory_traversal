Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get "/storage/:filename", to: "file_storage#show"
  # Defines the root path route ("/")
  # root "posts#index"
end

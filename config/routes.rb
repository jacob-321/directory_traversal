Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html


  root to: redirect('files')
  get 'files', to: 'file_storage#index'
  get 'files/download', to: 'file_storage#download', as: 'download_file'
  # Defines the root path route ("/")
  # root "posts#index"
end

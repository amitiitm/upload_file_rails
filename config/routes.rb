Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'pictures#upload'

  resources :pictures, only: [:index, :create] do
  	post 'upload', on: :collection, controller: 'pictures'
  end
end

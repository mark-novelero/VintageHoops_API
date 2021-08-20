Rails.application.routes.draw do
  resources :sellers, only: [:index, :show, :create, :update, :destroy]
  resources :products, only: [:index, :show, :create, :update, :destroy]

  post "/login", to: "sellers#login"  #when there is post request, use seller login method in sellers. 
end

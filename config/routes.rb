Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :posts
  get "api/v1/quote" => "api/v1/quote#get_quote"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

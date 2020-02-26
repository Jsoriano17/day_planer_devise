Rails.application.routes.draw do
get 'static_page/index'
root 'static_page#index'
resources :plans do
  resources :notes
end
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

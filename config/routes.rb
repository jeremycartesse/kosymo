Rails.application.routes.draw do

  resources :offers
  devise_for :users
  resources :users, only: [] do
    get '/offers', to: "users#offers"
  end

  root to: 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get 'welcome/index'

  resources :users do
    resources :offers
  end

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

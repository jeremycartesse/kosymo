Rails.application.routes.draw do

  resources :users do
    resources :offers
  end

  devise_for :users
  root to: 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

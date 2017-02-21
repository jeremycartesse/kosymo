Rails.application.routes.draw do
  get 'dashboard/index'

  get 'dashboard/show'

  get 'dashboard/new'

  get 'dashboard/create'

  get 'dashboard/edit'

  get 'dashboard/delete'

  get 'dashboard/update'

  resources :users do
    resources :offers
  end

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do

  get 'new_country' => 'presidents#new_country'
  get 'update_states' => 'presidents#update_states'

  get 'villages/index'

  get 'villages/new'

  get 'villages/create'

  devise_for :users
  resources :starships
  root 'employees#index'

  resources :accounts do
  	get 'delete'
  	get 'remove'
  	get 'deposit'
  end
  
  resources :categories

  resources :employees do
    get 'pay'
  end
  get 'process_payment' => 'employees#process_payment'

  resources :products do
  	get "delete"
  end

  get 'payment_success' => 'charges#payment_success'

  resources :charges, only: [:create]

  resources :presidents

  resources :students

  resources :orders, only: [:index]

  resources :villages, only: [:index, :new, :create ]

end

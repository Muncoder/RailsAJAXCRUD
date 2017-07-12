Rails.application.routes.draw do

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

end

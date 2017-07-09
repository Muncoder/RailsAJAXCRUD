Rails.application.routes.draw do

  resources :accounts do
  	get 'delete'
  	get 'remove'
  	get 'deposit'
  end
  resources :categories
  resources :employees
  resources :products do
  	get "delete"
  end

  resources :charges, only: [:create]

end

Rails.application.routes.draw do

  resources :accounts do
  	get 'delete'
  	get 'remove'
  end
  resources :categories
  resources :employees
  resources :products do
  	get "delete"
  end

end

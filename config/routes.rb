Rails.application.routes.draw do
  resources :companydevices
  resources :companyemployees
  resources :companyadmins
  resources :admins
  resources :employees
  resources :devices
  

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

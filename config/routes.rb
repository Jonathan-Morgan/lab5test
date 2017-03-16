Rails.application.routes.draw do
  resources :testing_pages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'testing_pages/index'
  
  root 'testing_pages#index'
  
  

end






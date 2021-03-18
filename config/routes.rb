Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root to: 'butterrolls#main'

  
  get 'main', :to => 'butterrolls#main', as: 'main'
  get 'about', :to => 'butterrolls#about', as: 'about'
  
  resources :words
  resources :phrases
  resources :matches

end

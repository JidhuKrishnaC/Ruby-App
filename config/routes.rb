Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
# your routes here...
    get 'home/index'
    root 'home#index'
    
    devise_for :employees
    
    resources :developers
    resources :tasks
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
 
  # Defines the root path route ("/")
  # root "articles#index"
  # config/routes.rb


end
end

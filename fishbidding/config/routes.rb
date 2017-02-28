Rails.application.routes.draw do
  resources :sale_posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #set sale_posts#index as homepage
  root 'sale_posts#index'
end

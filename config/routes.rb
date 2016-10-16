Rails.application.routes.draw do
  resources :food_items
  root 'home#index'
  get 'menu' => 'home#menu'
  get 'contanct_us' => 'home#contact_us'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

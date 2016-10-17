Rails.application.routes.draw do
  resources :food_items
  resources :user_orders, only: [:create]
  root 'home#index'
  get 'menu' => 'home#menu'
  get 'contanct_us' => 'home#contact_us'
  get 'search' => 'home#search'
  get 'order' => 'home#order'
  delete 'remove_order' => 'home#remove_order'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

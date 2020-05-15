Rails.application.routes.draw do

  # resources :brands, only [:index, :show]
  resources :items
  resources :brands
  
  get '/items/:item_id/brands/:id', to: 'brands#add_item'
  # get '/flavors', to: 'flavors#index'


  # ===================Auth=========================
  post '/auth/login', to: 'authentication#login'
  get '/auth/verify', to: 'authentication#verify'
  resources :users do
    resources :posts
  end
  # ============================================
  
end

  # ===================Import CSV=========================
  # root to: "brands#index"
  # get 'brands/index'
  # get 'brands/import' => 'brands#my_import'
  # resources :items
  
  
  # resources :brands do
  #   collection  { post :import}
  # end
  # ============================================

  


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html



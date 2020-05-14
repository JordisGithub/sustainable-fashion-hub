Rails.application.routes.draw do

  resources :brands, only: :index
  resources :items

  # ===================Auth=========================
  post '/auth/login', to: 'authentication#login'
  get '/auth/verify', to: 'authentication#verify'
  resources :users
  # ============================================
  
  
  # ===================Import CSV=========================
  root to: "brands#index"
  get 'brands/index'
  get 'brands/import' => 'brands#my_import'
  resources :items
  
  # resources :brands
  resources :brands do
    collection  { post :import}
  end
  # ============================================

  


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end



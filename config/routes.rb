Rails.application.routes.draw do
  root "info#home"

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :photos
  resources :commissions
  resources :costumes
  resources :genres
  resources :shows
  resources :years

  get '/home' => 'info#home'
  get '/about' => 'info#about'
  get '/contact' => 'info#contact'
  get '/shops' => 'info#shops'
  get '/resume' => 'info#resume'

  get '/code' => 'code#code'
  get '/code/melvinopolis' => 'code#melvinopolis'
  get '/code/gllry' => 'code#gllry'
  get '/code/podkeeper' => 'code#podkeeper'
  get '/code/tts' => 'code#tts'
  get '/code/women-wine-design' => 'code#www'
  get '/code/lechegaray' => 'code#luis'
  get '/code/gishwhes2015' => 'code#gishwhes'
  get '/code/cards' => 'code#cards'
  get '/code/la-patrona' => 'code#lapatrona'
  get '/code/night-shift' => 'code#nightshift'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
